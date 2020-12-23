/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.service;

import com.sun.net.ssl.internal.ssl.Provider;
import java.io.Console;
import static java.security.Security.addProvider;
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

/**
 *
 * @author Napster
 */
public class SendingEmail {

    public String getUserEmail() {
        return userEmail;
    }

    public String getMyHash() {
        return myHash;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public void setMyHash(String myHash) {
        this.myHash = myHash;
    }
    private String userEmail;
    private String myHash;

    public SendingEmail(String userEmail, String myHash) {
        this.userEmail = userEmail;
        this.myHash = myHash;
    }
    //send email to the user email
    public boolean sendVerifyEmail() {
        try {
            Properties mailServerProperties;
		Session getMailSession;
		MimeMessage mailMessage;

		// Step1: setup Mail Server
		mailServerProperties = System.getProperties();
		mailServerProperties.put("mail.smtp.port", "587");
		mailServerProperties.put("mail.smtp.auth", "true");
		mailServerProperties.put("mail.smtp.starttls.enable", "true");

		// Step2: get Mail Session
		getMailSession = Session.getDefaultInstance(mailServerProperties, null);
		mailMessage = new MimeMessage(getMailSession);

		// thay abc@gmail.com báº±ng Ä‘á»‹a chá»‰ ngÆ°á»�i nháº­n
		mailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail)); 

		// Báº¡n cÃ³ thá»ƒ chá»�n CC, BCC
		// generateMailMessage.addRecipient(Message.RecipientType.CC, new
		// InternetAddress("cc@gmail.com")); //Ä�á»‹a chá»‰ cc gmail
                
                
		mailMessage.setSubject("TiTi Shop Account - Verification email ");
                /*
                mailMessage.setText("Hi,");
                
                mailMessage.setText("                                            ");
                
                mailMessage.setText("Thanks for registration TiTi Shope account. To active your account, please click on this link:");
                
                mailMessage.setText("Your Verification link:: "+ "http://localhost:8080/ActiveAccount?key1="+userEmail+"&key2="+myHash);
                
                mailMessage.setText("If you can't click on this. Copy the link into your browser or type it.");
                
                mailMessage.setText("Best regard.");
                */
                mailMessage.setText("This link will be invalid after 3 minutes: "
                        + "Your Verification link:: "+ "http://localhost:8080/Demo2/ActiveAccount?key1="+userEmail+"&key2="+myHash);


		// Step3: Send mail
		Transport transport = getMailSession.getTransport("smtp");

		// Thay your_gmail thÃ nh gmail cá»§a báº¡n, thay your_password
		// thÃ nh máº­t kháº©u gmail cá»§a báº¡n
		transport.connect("smtp.gmail.com", "webdevuteit@gmail.com", "tantupro055");
		transport.sendMessage(mailMessage, mailMessage.getAllRecipients());
		transport.close();
                return true;
        } catch (Exception e) {
            return false;
        }
    }
    
    /*
    
    public boolean sendVerifyEmail()
    {
        final String host_email = "webdevuteit@gmail.com";
        final String host_pass = "tantupro055";
        String host="localhost";
        
        
        Properties properties = new Properties();
        
        properties.setProperty("mail.smtp.host", host);
        properties.put("smtp.mail.auth", "true");
        properties.put("smtp.mail.starttls.enable", "true");
        properties.put("smtp.mail.host", "smtp.gmail.com");
        properties.put("smtp.mail.port", "587");
        Session sess = Session.getDefaultInstance(properties, new javax.mail.Authenticator(){
           protected PasswordAuthentication getPasswordAuthentication(){
               return new PasswordAuthentication(host_email, host_pass);
           } 
        });
        try {
            MimeMessage message = new MimeMessage(sess);
            message.setFrom(new InternetAddress(host_email));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
            message.setSubject("TiTi Shop Verification Email ");
            message.setText("Verification Link... ");
            message.setText("Your Verification link:: "+ "http://localhost:8080/ActiveAccount?key1="+userEmail+"&key2="+myHash);
            Transport.send(message);    
        } catch (Exception e) {
            System.out.println("Sending mail:"+e.toString());
            return false;
        }
        return true;
    }*/
    
    /*
    public boolean sendVerifyEmail()
    {
        try {
                String user = "webdevuteit@gmail.com";
                String pass = "tantupro055";
                String host="smtp.gmail.com";
                String from = "webdevuteit@gmail.com";
                
                boolean sessionDebug = false;
                
                Properties pros = System.getProperties();
                
                pros.put("smtp.mail.starttls.enable", "true");
                pros.put("smtp.mail.host", host);
                pros.put("smtp.mail.port", "587");
                pros.put("smtp.mail.auth", "true");
                pros.put("smtp.mail.starttls.required", "true");
                
                java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
                
                Session mailSession = Session.getDefaultInstance(pros, null);
                mailSession.setDebug(sessionDebug);
                Message msg = new MimeMessage(mailSession);
                msg.setFrom(new InternetAddress(from));
                InternetAddress[]  address = {new InternetAddress(userEmail)};
                msg.setRecipients(Message.RecipientType.TO, address);
                msg.setSubject(MimeUtility.encodeText("Verification Email","utf-8","8"));
                msg.setSentDate(new Date());
                msg.setContent("Your Verification link:: "+ "http://localhost:8080/ActiveAccount?key1="+userEmail+"&key2="+myHash,"text/html; charset=utf-8");
                
                Transport transport = mailSession.getTransport();
                transport.connect(host,user,pass);
                transport.sendMessage(msg, msg.getAllRecipients());
                transport.close();
                return true;
                
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return false;
        
    }
*/

    
    
}
