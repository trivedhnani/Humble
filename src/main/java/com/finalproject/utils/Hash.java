package com.finalproject.utils;

import org.mindrot.jbcrypt.BCrypt;

public class Hash {

	public Hash() {
		// TODO Auto-generated constructor stub
	}
	public static String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }

    public static boolean checkPasssword(String password, String hashedPassword) {
        return BCrypt.checkpw(password, hashedPassword);
    }
}
