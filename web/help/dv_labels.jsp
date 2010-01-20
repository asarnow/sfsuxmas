<%@page import="com.sfsu.xmas.globals.*"%>

<%@ include file="../template/file_header.jsp" %>

<%
            String parentPageName = "Help";
            String pageName = "Home";
%>

<html xmlns="http://www.w3.org/1999/xhtml" >
    
    <head>
        
        <title><%= pageName%> - <%= SiteGlobals.SITE_PAGE_TITLE%></title>
        
        <%@ include file="../template/base_imports.jsp" %>
        
    </head>
    
    <body onload="
        wol_top_nav('<%= parentPageName.toLowerCase()%>'); 
        wol_top_sub_nav('<%= pageName.toLowerCase()%>');
          ">
        
        <jsp:include page="../template/top_navigation.jsp">
            <jsp:param name="parent" value="<%= parentPageName %>" />
        </jsp:include>
        
        <div id="page_body_container">
            <div id="page_body">
                <div id="page_body_sub">
                    
                    <div id="page_body_main_full">
                        <h1>Labels</h1>
                        <div id="page_body_content">
                            
                            <style>
                                .code {
                                    font-family: courier new;
                                }
                                .img_caption {
                                    text-align: right;
                                    float: right;
                                    clear: both;
                                    font-size: 10px;
                                    width: 40%;
                                }
                                .img_caption_l {
                                    text-align: left;
                                    font-size: 10px;
                                    width: 40%;
                                }
                            </style>
                            <div class="tutorial">
                                
                                <p>
                                    The Labels Data View is accessible through the Data tab in the sidebar.
                                </p>
                                
                                <h2>Quantification</h2>
                                
                                <a href="../help/images/dv_labels_view.png">
                                    <img src="../help/images/dv_labels_view.png"  class="snap"
                                         style="float: right; width: 40%;"
                                         alt="Labels accompanied by quantifications and a visual representation of significance" 
                                         title="Labels accompanied by quantifications and a visual representation of significance" />
                                </a>
                                <p class="img_caption">
                                    <b>Fig. 1</b>: A snap shot of the Labels Data View 
                                </p>
                                
                                <p>
                                    The involvement or overlap of a label with an
                                    analysis is quantified using three measures: 
                                    <ul>
                                        <li>
                                            <p>
                                                1) <b>Precision</b>; and 2) <b>Recall</b> quantify the strength of the relationship between a label (or pathway) and a set of probes/genes. 
                                                Let <i class="code">P</i> be a label of interest and <i class="code">x</i> the number of participating probes of <i class="code">P</i>. 
                                                Let <i class="code">y</i> be the number of probes returned by a certain operator, among which <i class="code">z</i> probes are associated with <i class="code">P</i>. 
                                                Then the Precision value (defined as <i class="code">z/y</i>) determines the fraction of probes returned by the operator that are relevant given the label of interest. 
                                                Conversely the Recall value (defined as <i class="code">z/x</i>) determines the fraction of all the relevant probes that are returned by the operator.
                                            </p>
                                        </li>
                                        <li>
                                            <p>
                                                3) <b>p-value</b> provides an evaluation of the statistical and biological significance of associations between probes and the label.
                                            </p>
                                        </li>
                                    </ul>
                                </p>
                                
                                <h2>Visualization</h2>
                                <p>
                                    A graphic representation of each label and its proportional, relative involvement with analysis accompanies the quantitative measures to provide a supporting snap shot.
                                </p>
                                <ul>
                                    <li>
                                        <p>
                                            The bottom row (shown in <i style="color: blue;">blue</i>) represents all the probes in the current analysis, <i class="code">y</i>
                                        </p>
                                    </li>
                                    <li>
                                        <p>
                                            The top row (shown in <i style="color: yellow;">yellow</i>) represents all the probes in the specific label, <i class="code">P</i>
                                        </p>
                                    </li>
                                    <li>
                                        <p>
                                            The middle row (shown in <i style="color: orange;">orange</i>) represents the intersection of these two sets, <i class="code">z</i>
                                        </p>
                                    </li>
                                </ul>
                                
                                <h2>Highlight</h2>
                                <p>
                                    The Highlight operator is activated and deactivated by toggling the star (<img src="../resources/images/unhigh.png" /> / <img src="../resources/images/high.png" />)
                                    that accompanies each supported data type (e.g. labels and probes).
                                    Highlighting a label highlights its member probes, which reveals the intersection of the label and analysis, without the need to filter. 
                                    This operator is useful for establishing the behavior of a label in the context of a broader analysis.
                                </p>
                                
                                <div style="clear: both;">
                                    <a href="../help/images/dv_labels_high.png">
                                        <img src="../help/images/dv_labels_high.png" class="snap" style="float: right; width: 45%;"
                                             alt="A snap shot of the Label Data View accompanying a Profile Visualization, with a label highlighted" 
                                             title="A snap shot of the Label Data View accompanying a Profile Visualization, with a label highlighted" />
                                    </a>
                                    
                                    <p class="img_caption">
                                        <b>Fig. 3</b>: A snap shot of the Label Data View accompanying a Profile Visualization, with a label highlighted
                                    </p>
                                    
                                    <a href="../help/images/dv_labels_unhigh.png">
                                        <img src="../help/images/dv_labels_unhigh.png" class="snap"  style="width: 45%;"
                                             alt="A snap shot of the Label Data View accompanying a Profile Visualization" 
                                             title="A snap shot of the Label Data View accompanying a Profile Visualization" />
                                    </a>
                                    
                                    <p class="img_caption_l">
                                        <b>Fig. 2</b>: A snap shot of the Label Data View accompanying a Profile Visualization
                                    </p>
                                </div>
                                
                                <h2>Isolate</h2>
                                <p>
                                    Labels can be isolated by selecting one or more in the data view, and clicking the Isolate button in the operator menu.
                                    This has the effect of focusing analysis on the labels' member probes, or rather, the intersection of the isolated label with the existing and future analysis.
                                    
                                </p>
                                
                                <h2>Exclude</h2>
                                <p>
                                    Labels can be excluded by selecting one or more in the data view, and clicking the Exclude button in the operator menu.
                                    This has the effect of removing the labels' member probes from analysis.
                                </p>
                                
                            </div>
                            
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <%@ include file="../template/footer.jsp" %>
    </body>
</html>