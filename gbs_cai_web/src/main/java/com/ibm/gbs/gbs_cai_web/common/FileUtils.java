package com.ibm.gbs.gbs_cai_web.common;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openstack4j.api.OSClient;
import org.openstack4j.api.storage.ObjectStorageService;
import org.openstack4j.model.common.Identifier;
import org.openstack4j.openstack.OSFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;

public class FileUtils {
	protected final Log logger = LogFactory.getLog(FileUtils.class);
	
	@Autowired
	private ResourceLoader resourceLoader;
	private Properties prop = new Properties();

	String filename = "properties/fileobject.properties";   // Object Storage Authentification Information Property

	public ObjectStorageService authenObjectStorageService() {

		InputStream objectProp = getClass().getClassLoader().getResourceAsStream(filename);
		try {
			prop.load(objectProp);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			logger.error("Not exist property files.", e);
		}

		final String USERID = prop.getProperty("USERID");
		final String PASSWORD = prop.getProperty("PASSWORD");
		final String DOMAIN_NM = prop.getProperty("DOMAIN_NM");
		final String PROJECT_NM = prop.getProperty("PROJECT_NM");
		final String OBJECT_STORAGE_AUTH_URL = prop.getProperty("OBJECT_STORAGE_AUTH_URL");

		Identifier dmIdentifier = Identifier.byName(DOMAIN_NM);
		Identifier pjIdentifier = Identifier.byName(PROJECT_NM);

		// Object Storage key 인증
		OSClient osclient = OSFactory.builderV3()
				.endpoint(OBJECT_STORAGE_AUTH_URL)
				.credentials(USERID, PASSWORD)
				.scopeToProject(pjIdentifier, dmIdentifier)
				.authenticate();

		logger.info("Success Authentification - Object Storage");

		ObjectStorageService objectStorage = osclient.objectStorage();

		return objectStorage;

	}
}
