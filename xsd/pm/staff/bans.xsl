<?xml version="1.0" encoding="UTF-8"?>
<!--
 * Copyright (c) 2016-2017 Zerocracy
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to read
 * the Software only. Permissions is hereby NOT GRANTED to use, copy, modify,
 * merge, publish, distribute, sublicense, and/or sell copies of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 -->
<xs:schema version="SNAPSHOT" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    elementFormDefault="qualified" attributeFormDefault="unqualified">
    <xs:include schemaLocation="http://datum.zerocracy.com/SNAPSHOT/xsd/basics.xsd"/>
    <xs:include schemaLocation="http://datum.zerocracy.com/SNAPSHOT/xsd/pmo/types.xsd"/>
    <xs:include schemaLocation="http://datum.zerocracy.com/SNAPSHOT/xsd/pmo/elections.xsd"/>
    <xs:complexType name="ban">
        <xs:all>
            <xs:element name="created" minOccurs="1" maxOccurs="1" type="xs:dateTime"/>
            <xs:element name="login" minOccurs="1" maxOccurs="1" type="login"/>
            <xs:element name="reason" minOccurs="1" maxOccurs="1">
                <xs:simpleType>
                    <xs:restriction base="xs:string">
                        <xs:pattern value="[A-Za-z ]+"/>
                    </xs:restriction>
                </xs:simpleType>
            </xs:element>
        </xs:all>
        <xs:attribute name="job" type="job" use="required"/>
    </xs:complexType>
    <xs:element name="bans">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="ban" type="ban" minOccurs="0" maxOccurs="unbounded"/>
            </xs:sequence>
            <xs:attribute name="updated" use="required" type="xs:dateTime"/>
            <xs:attribute name="version" use="required" type="version"/>
        </xs:complexType>
    </xs:element>
</xs:schema>
