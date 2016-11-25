FROM jboss/keycloak-adapter-wildfly:2.4.0.Final

ADD changeProxy.xsl /opt/jboss/wildfly/
RUN java -jar /usr/share/java/saxon.jar -s:/opt/jboss/wildfly/standalone/configuration/standalone.xml -xsl:/opt/jboss/wildfly/changeProxy.xsl -o:/opt/jboss/wildfly/standalone/configuration/standalone.xml; java -jar /usr/share/java/saxon.jar -s:/opt/jboss/wildfly/standalone/configuration/standalone-ha.xml -xsl:/opt/jboss/wildfly/changeProxy.xsl -o:/opt/jboss/wildfly/standalone/configuration/standalone-ha.xml; rm /opt/jboss/wildfly/changeProxy.xsl
