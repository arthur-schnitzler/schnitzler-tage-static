<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0" exclude-result-prefixes="#all">
    <xsl:output encoding="UTF-8" media-type="text/html" method="xhtml" version="1.0" indent="yes"
        omit-xml-declaration="yes"/>
    <xsl:import href="./partials/html_navbar.xsl"/>
    <xsl:import href="./partials/html_head.xsl"/>
    <xsl:import href="./partials/html_footer.xsl"/>
    <xsl:template match="/">
        <xsl:variable name="doc_title">
            <xsl:value-of select="descendant::tei:titleSmt[1]/tei:title[@level = 'a']/text()"/>
        </xsl:variable>
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <xsl:call-template name="html_head">
                    <xsl:with-param name="html_title" select="$doc_title"/>
                </xsl:call-template>
            </head>
            <body class="page" style="background-color:#f1f1f1;">
                <div class="hfeed site" id="page">
                    <xsl:call-template name="nav_bar"/>
                    <div class="container">
                        <div class="row intro">
                            <div class="col-md-6 col-lg-6 col-sm-12 wp-intro_left">
                                <div class="intro_left">
                                    <h1>Arthur Schnitzler Tag für Tag</h1>
                                    <h3>
                                        <i>Eine digitale Ressource zu den einzelnen Tagen seines
                                            Lebens. </i>
                                    </h3>
                                    <p style="text-align: right">
                                        <a href="#body">
                                            <button class="btn btn-round"
                                                style="background-color: #C67F53; color: white; font-weight: bolder;"
                                                >Weiter</button>
                                        </a></p>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-sm-12">
                                <div class="intro_right wrapper">
                                    <img src="images/background-index.jpg" class="d-block w-100"
                                        style="max-width=30%;"
                                        alt="Ein bearbeitetes Bild Schnitzlers nach einer Zeichnung von Bertha Czegka"
                                    />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid" style="margin:2em auto;">
                        <div style="max-width: 650px; margin: auto;">
                            <span style="display: block;
                                position: relative;
                                top: -250px; visibility: hidden"
                                id="body"/>
                            <p class="mt-3">In den letzten Jahren wurden von mehreren
                                Forschungsprojekten biographische und literarische Dokumente von
                                Arthur Schnitzler (1862–1931) digitalisiert und ediert.</p>
                            <p class="mt-3">Diese Webseite versucht sich erstmals an einer
                                projektübergreifenden Verlinkung dieser Materialien. Über eine
                                einfache Benutzeroberfläche können Informationen zu jedem Tag von
                                Schnitzlers (Erwachsenen-)Leben abgerufen werden. Die Daten stehen
                                sowohl in einer HTML-Ansicht, einer JSON-Datei wie auch als XML bereit. Sie
                                können über die URL der Webseite in Kombination mit dem Datum
                                abgerufen werden. Beispielsweise: <ul>
                                    <li><a href="1927-11-07.html">1927-11-07.html</a></li>
                                    <li><a href="1927-11-07.json">1927-11-07.json</a></li>
                                    <li><a href="1927-11-07.xml">1927-11-07.xml</a></li>
                                </ul>
                            </p>
                            <p class="mt-3">Derzeit sind Daten folgender digitaler Editionen
                                eingebunden:</p>
                            <ul>
                                <li>
                                    <a href="https://schnitzler-tagebuch.acdh.oeaw.ac.at/"
                                        target="_blank">Arthur Schnitzler: <i>Tagebuch</i></a>  (16.422 Einträge)
                                </li>
                                <li><a href="https://www.arthur-schnitzler.de/" target="_blank"
                                        >Arthur Schnitzler digital: <i>Digitale historisch-kritische
                                            Edition (1905–1931)</i></a> (Wuppertal/Cambridge, 505 Einträge)</li>
                                <li>
                                    <a href="https://schnitzler-briefe.acdh.oeaw.ac.at/"
                                        target="_blank">Arthur Schnitzler: <i>Briefwechsel mit
                                            Autorinnen und Autoren</i></a> (3.049 Einträge)
                                </li>
                                <li>
                                    <a href="https://pollaczek.acdh.oeaw.ac.at/" target="_blank"
                                        >Clara Katharina Pollaczek: <i>Arthur Schnitzler und
                                            ich</i></a>  (1.960 Einträge)
                                </li>
                                <li>
                                    <a href="https://schnitzler-bahr.acdh.oeaw.ac.at/"
                                        target="_blank">Hermann Bahr, Arthur Schnitzler:
                                            <i>Briefwechsel, Aufzeichungen, Dokumente
                                                (1891–1931)</i></a>  (1.367 Einträge)
                                </li>
                            </ul>
                            <p class="mt-3">Weiters werden Daten von folgenden Projekten
                                berücksichtigt:</p>
                            <ul>
                                <li>
                                    <a href="https://schnitzler-orte.acdh.oeaw.ac.at/"
                                        target="_blank">
                                        <i>Aufenthaltsorte von Arthur Schnitzler</i> 
                                    </a> (22.556 Einträge)
                                </li>
                                <li>
                                    <a href="https://kalliope-verbund.info/search.html?q=Arthur+Schnitzler" target="_blank">
                                        <i>Suche »Arthur Schnitzler« im Verbundkatalog Kalliope</i>
                                    </a> (nur Objekte mit Datumsangaben im ISO-Format YYYY-MM-DD, 4289 Einträge)
                                </li>
                                <li><a
                                        href="https://correspsearch.net/de/suche.html?s=http://d-nb.info/gnd/118609807"
                                        target="_blank"><i>Gedruckte und digitale
                                            Korrespondenzstücke</i></a> Schnitzlers bei
                                    correspSearch</li> (3.469 Einträge)
                                <li><a
                                    href="https://pmb.acdh.oeaw.ac.at/apis/entities/entity/event/list/?name=&amp;related_entity_name=schnitzler"  target="_blank"
                                        >Ereignisse in der PMB</a> (Teilnahme an
                                    Theateraufführungen, 273 Einträge)</li> 
                                <li>Ergänzungen über eine <a href="https://docs.google.com/spreadsheets/d/1D7DOS22f-j5o6BfCANtqTdRebi8Q4_cAsqqMcrNbRxw/edit#gid=0" target="_blank">Google Sheet-Tabelle</a> (34 Einträge)</li>
                            </ul>
                            <p class="mt-3">Es ist geplant, die Webseite fortlaufend zu erweitern.
                                Dies soll unter anderem durch das Einbinden von Erscheinungsdaten
                                von Werken und Rezensionen geschehen, die in der Datenbank <a
                                    href="https://pmb.acdh.oeaw.ac.at/apis/entities/entity/work/list/&amp;related_entity_name=schnitzler"
                                    >PMB</a> gesammelt sind.</p>
                            <p class="mt-3">Das Datenkorpus kann zur Gänze – oder in Teilen – auf <a
                                    href="https://github.com/arthur-schnitzler/schnitzler-tage/"
                                    target="_blank">GitHub</a> eingesehen und heruntergeladen
                                werden. Der Source Code zur vorliegenden Webseite findet sich gleich
                                    <a
                                    href="https://github.com/arthur-schnitzler/schnitzler-tage-static"
                                    target="_blank">daneben</a>.</p>
                            <p class="mt-3">»Arthur Schnitzler Tag für Tag« ist ein Ausgangspunkt.
                                Der eigentliche Nutzen der Webseite findet sich in den verlinkten
                                digitalen Ressourcen, die es ermöglichen, umfassende Recherchen zum
                                Leben und Werk Arthur Schnitzlers für jeden Tag seines Lebens
                                durchzuführen.</p>
                            <p class="mt-3"/>
                            <p class="mt-3" style="text-align:right; font-style: italic;">Martin
                                Anton Müller, Laura Untner<br/>Wien, April 2023</p>

                        </div>
                    </div>
                    <div class="container-fluid" style="margin:2em auto;">
                        <div class="row wrapper img_bottom">
                            <div class="col-md-6 col-lg-6 col-sm-12">
                                <a href="https://schnitzler.acdh.oeaw.ac.at/" class="index-link"
                                    target="_blank">
                                    <div class="card index-card">
                                        <div class="card-body">
                                            <img class="d-block w-100"
                                                src="https://shared.acdh.oeaw.ac.at/schnitzler-briefe/img/schnitzler-acdh.jpg"
                                                title="Schnitzler am ACDH-CH"
                                                alt="Schnitzler am ACDH-CH"/>
                                        </div>
                                        <div class="card-header">
                                            <p>Schnitzler am ACDH-CH</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-6 col-lg-6 col-sm-12">
                                <a href="https://github.com/arthur-schnitzler" class="index-link">
                                    <div class="card index-card">
                                        <div class="card-body">
                                            <img class="d-block w-100"
                                                src="https://shared.acdh.oeaw.ac.at/schnitzler-briefe/img/schnitzler-github.jpg"
                                                title="Schnitzler Repositories auf Github"
                                                alt="Schnitzler Repositories auf Github"/>
                                        </div>
                                        <div class="card-header">
                                            <p>Quelldaten dieser Webseite auf GitHub</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <xsl:call-template name="html_footer"/>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="tei:div//tei:head">
        <h2 id="{generate-id()}">
            <xsl:apply-templates/>
        </h2>
    </xsl:template>
    <xsl:template match="tei:p">
        <p id="{generate-id()}">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="tei:list">
        <ul id="{generate-id()}">
            <xsl:apply-templates/>
        </ul>
    </xsl:template>
    <xsl:template match="tei:item">
        <li id="{generate-id()}">
            <xsl:apply-templates/>
        </li>
    </xsl:template>
    <xsl:template match="tei:ref">
        <xsl:choose>
            <xsl:when test="starts-with(data(@target), 'http')">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="@target"/>
                    </xsl:attribute>
                    <xsl:value-of select="."/>
                </a>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
