/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.accessfb;

/**
 *
 * @author Napster
 */
public class Constants {
  public static String FACEBOOK_APP_ID = "388448022239409";
  public static String FACEBOOK_APP_SECRET = "4a11dbd986657cda031cebc84f418e1c";
  public static String FACEBOOK_REDIRECT_URL = "https://localhost:8443/Demo2/login-facebook";
  public static String FACEBOOK_LINK_GET_TOKEN = "https://graph.facebook.com/oauth/access_token?client_id=%s&client_secret=%s&redirect_uri=%s&code=%s";
}
