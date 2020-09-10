<%-- 
    Document   : saidbar
    Created on : Aug 25, 2020, 1:03:41 AM
    Author     : Saiful
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav id="sidebar" class="sidebar">
                <div class="sidebar-content js-simplebar">
                    <a class="sidebar-brand" href="indexd">
                        <span class="align-middle">AdminKit</span>
                    </a>

                    <ul class="sidebar-nav">
                        <li class="sidebar-header">
                            Pages
                        </li>

                        <li class="sidebar-item active">
                            <a class="sidebar-link" href="indexd">
                                <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link" href="pages-profile">
                                <i class="align-middle" data-feather="user"></i> <span class="align-middle">Profile</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link" href="pages-settings">
                                <i class="align-middle" data-feather="settings"></i> <span class="align-middle">Settings</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link" href="pages-invoice">
                                <i class="align-middle" data-feather="credit-card"></i> <span class="align-middle">Invoice</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link" href="pages-blank">
                                <i class="align-middle" data-feather="book"></i> <span class="align-middle">Blank</span>
                            </a>
                        </li>

                        <li class="sidebar-header">
                            Tools & Components
                        </li>
                        <li class="sidebar-item">
                            <a href="#ui" data-toggle="collapse" class="sidebar-link collapsed">
                                <i class="align-middle" data-feather="briefcase"></i> <span class="align-middle">UI Elements</span>
                            </a>
                            <ul id="ui" class="sidebar-dropdown list-unstyled collapse " data-parent="#sidebar">
                                <li class="sidebar-item"><a class="sidebar-link" href="desh/ui-alerts">Alerts</a></li>
                                <li class="sidebar-item"><a class="sidebar-link" href="desh/ui-buttons">Buttons</a></li>
                                <li class="sidebar-item"><a class="sidebar-link" href="desh/ui-cards">Cards</a></li>
                                <li class="sidebar-item"><a class="sidebar-link" href="desh/ui-general">General</a></li>
                                <li class="sidebar-item"><a class="sidebar-link" href="desh/ui-grid">Grid</a></li>
                                <li class="sidebar-item"><a class="sidebar-link" href="desh/ui-modals">Modals</a></li>
                                <li class="sidebar-item"><a class="sidebar-link" href="desh/ui-typography">Typography</a></li>
                            </ul>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link" href="desh/icons-feather">
                                <i class="align-middle" data-feather="coffee"></i> <span class="align-middle">Icons</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a href="#forms" data-toggle="collapse" class="sidebar-link collapsed">
                                <i class="align-middle" data-feather="check-circle"></i> <span class="align-middle">Forms</span>
                            </a>
                            <ul id="forms" class="sidebar-dropdown list-unstyled collapse " data-parent="#sidebar">
                                <li class="sidebar-item"><a class="sidebar-link" href="forms-layouts">Form Layouts</a></li>
                                <li class="sidebar-item"><a class="sidebar-link" href="forms-basic-inputs">Basic Inputs</a></li>
                            </ul>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link" href="tables-bootstrap">
                                <i class="align-middle" data-feather="list"></i> <span class="align-middle">Tables</span>
                            </a>
                        </li>

                        <li class="sidebar-header">
                            Plugins & Addons
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link" href="charts-chartjs">
                                <i class="align-middle" data-feather="bar-chart-2"></i> <span class="align-middle">Charts</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link" href="maps-google">
                                <i class="align-middle" data-feather="map"></i> <span class="align-middle">Maps</span>
                            </a>
                        </li>
                    </ul>

                    <div class="sidebar-cta">
                        <div class="sidebar-cta-content">
                            <strong class="d-inline-block mb-2">administrator</strong>
                            <img src="dcss/img/avatars/avatar-2.jpg" height="100" width="100" alt="Saiful" title="G.M. Saiful Alam">
                        </div>
                    </div>
                </div>
            </nav>
