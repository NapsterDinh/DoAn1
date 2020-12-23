<%-- 
    Document   : themsanpham
    Created on : Dec 16, 2020, 2:49:04 PM
    Author     : PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <!--begin::Head-->
    <head>
        <base href="">
        <meta charset="utf-8">
        <title>Metronic Live preview | Keenthemes</title>
        <meta name="description" content="Metronic admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets.">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="canonical" href="https://keenthemes.com/metronic">
        <!--begin::Fonts-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">
        <!--end::Fonts-->
        <!--begin::Page Vendors Styles(used by this page)-->
        <link href="assets/plugins/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" type="text/css">
        <!--end::Page Vendors Styles-->
        <!--begin::Global Theme Styles(used by all pages)-->
        <link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css">
        <link href="assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css">
        <link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css">
        <!--end::Global Theme Styles-->
        <!--begin::Layout Themes(used by all pages)-->
        <link href="assets/css/themes/layout/header/base/light.css" rel="stylesheet" type="text/css">
        <link href="assets/css/themes/layout/header/menu/light.css" rel="stylesheet" type="text/css">
        <link href="assets/css/themes/layout/brand/dark.css" rel="stylesheet" type="text/css">
        <link href="assets/css/themes/layout/aside/dark.css" rel="stylesheet" type="text/css">
        <!--end::Layout Themes-->
        <link rel="shortcut icon" href="assets/media/logos/favicon.ico">
        <style type="text/css">
            .apexcharts-canvas {
                position: relative;
                user-select: none;
                /* cannot give overflow: hidden as it will crop tooltips which overflow outside chart area */
            }


            /* scrollbar is not visible by default for legend, hence forcing the visibility */
            .apexcharts-canvas ::-webkit-scrollbar {
                -webkit-appearance: none;
                width: 6px;
            }

            .apexcharts-canvas ::-webkit-scrollbar-thumb {
                border-radius: 4px;
                background-color: rgba(0, 0, 0, .5);
                box-shadow: 0 0 1px rgba(255, 255, 255, .5);
                -webkit-box-shadow: 0 0 1px rgba(255, 255, 255, .5);
            }


            .apexcharts-inner {
                position: relative;
            }

            .apexcharts-text tspan {
                font-family: inherit;
            }

            .legend-mouseover-inactive {
                transition: 0.15s ease all;
                opacity: 0.20;
            }

            .apexcharts-series-collapsed {
                opacity: 0;
            }

            .apexcharts-tooltip {
                border-radius: 5px;
                box-shadow: 2px 2px 6px -4px #999;
                cursor: default;
                font-size: 14px;
                left: 62px;
                opacity: 0;
                pointer-events: none;
                position: absolute;
                top: 20px;
                display: flex;
                flex-direction: column;
                overflow: hidden;
                white-space: nowrap;
                z-index: 12;
                transition: 0.15s ease all;
            }

            .apexcharts-tooltip.apexcharts-active {
                opacity: 1;
                transition: 0.15s ease all;
            }

            .apexcharts-tooltip.apexcharts-theme-light {
                border: 1px solid #e3e3e3;
                background: rgba(255, 255, 255, 0.96);
            }

            .apexcharts-tooltip.apexcharts-theme-dark {
                color: #fff;
                background: rgba(30, 30, 30, 0.8);
            }

            .apexcharts-tooltip * {
                font-family: inherit;
            }


            .apexcharts-tooltip-title {
                padding: 6px;
                font-size: 15px;
                margin-bottom: 4px;
            }

            .apexcharts-tooltip.apexcharts-theme-light .apexcharts-tooltip-title {
                background: #ECEFF1;
                border-bottom: 1px solid #ddd;
            }

            .apexcharts-tooltip.apexcharts-theme-dark .apexcharts-tooltip-title {
                background: rgba(0, 0, 0, 0.7);
                border-bottom: 1px solid #333;
            }

            .apexcharts-tooltip-text-value,
            .apexcharts-tooltip-text-z-value {
                display: inline-block;
                font-weight: 600;
                margin-left: 5px;
            }

            .apexcharts-tooltip-text-z-label:empty,
            .apexcharts-tooltip-text-z-value:empty {
                display: none;
            }

            .apexcharts-tooltip-text-value,
            .apexcharts-tooltip-text-z-value {
                font-weight: 600;
            }

            .apexcharts-tooltip-marker {
                width: 12px;
                height: 12px;
                position: relative;
                top: 0px;
                margin-right: 10px;
                border-radius: 50%;
            }

            .apexcharts-tooltip-series-group {
                padding: 0 10px;
                display: none;
                text-align: left;
                justify-content: left;
                align-items: center;
            }

            .apexcharts-tooltip-series-group.apexcharts-active .apexcharts-tooltip-marker {
                opacity: 1;
            }

            .apexcharts-tooltip-series-group.apexcharts-active,
            .apexcharts-tooltip-series-group:last-child {
                padding-bottom: 4px;
            }

            .apexcharts-tooltip-series-group-hidden {
                opacity: 0;
                height: 0;
                line-height: 0;
                padding: 0 !important;
            }

            .apexcharts-tooltip-y-group {
                padding: 6px 0 5px;
            }

            .apexcharts-tooltip-candlestick {
                padding: 4px 8px;
            }

            .apexcharts-tooltip-candlestick>div {
                margin: 4px 0;
            }

            .apexcharts-tooltip-candlestick span.value {
                font-weight: bold;
            }

            .apexcharts-tooltip-rangebar {
                padding: 5px 8px;
            }

            .apexcharts-tooltip-rangebar .category {
                font-weight: 600;
                color: #777;
            }

            .apexcharts-tooltip-rangebar .series-name {
                font-weight: bold;
                display: block;
                margin-bottom: 5px;
            }

            .apexcharts-xaxistooltip {
                opacity: 0;
                padding: 9px 10px;
                pointer-events: none;
                color: #373d3f;
                font-size: 13px;
                text-align: center;
                border-radius: 2px;
                position: absolute;
                z-index: 10;
                background: #ECEFF1;
                border: 1px solid #90A4AE;
                transition: 0.15s ease all;
            }

            .apexcharts-xaxistooltip.apexcharts-theme-dark {
                background: rgba(0, 0, 0, 0.7);
                border: 1px solid rgba(0, 0, 0, 0.5);
                color: #fff;
            }

            .apexcharts-xaxistooltip:after,
            .apexcharts-xaxistooltip:before {
                left: 50%;
                border: solid transparent;
                content: " ";
                height: 0;
                width: 0;
                position: absolute;
                pointer-events: none;
            }

            .apexcharts-xaxistooltip:after {
                border-color: rgba(236, 239, 241, 0);
                border-width: 6px;
                margin-left: -6px;
            }

            .apexcharts-xaxistooltip:before {
                border-color: rgba(144, 164, 174, 0);
                border-width: 7px;
                margin-left: -7px;
            }

            .apexcharts-xaxistooltip-bottom:after,
            .apexcharts-xaxistooltip-bottom:before {
                bottom: 100%;
            }

            .apexcharts-xaxistooltip-top:after,
            .apexcharts-xaxistooltip-top:before {
                top: 100%;
            }

            .apexcharts-xaxistooltip-bottom:after {
                border-bottom-color: #ECEFF1;
            }

            .apexcharts-xaxistooltip-bottom:before {
                border-bottom-color: #90A4AE;
            }

            .apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:after {
                border-bottom-color: rgba(0, 0, 0, 0.5);
            }

            .apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:before {
                border-bottom-color: rgba(0, 0, 0, 0.5);
            }

            .apexcharts-xaxistooltip-top:after {
                border-top-color: #ECEFF1
            }

            .apexcharts-xaxistooltip-top:before {
                border-top-color: #90A4AE;
            }

            .apexcharts-xaxistooltip-top.apexcharts-theme-dark:after {
                border-top-color: rgba(0, 0, 0, 0.5);
            }

            .apexcharts-xaxistooltip-top.apexcharts-theme-dark:before {
                border-top-color: rgba(0, 0, 0, 0.5);
            }

            .apexcharts-xaxistooltip.apexcharts-active {
                opacity: 1;
                transition: 0.15s ease all;
            }

            .apexcharts-yaxistooltip {
                opacity: 0;
                padding: 4px 10px;
                pointer-events: none;
                color: #373d3f;
                font-size: 13px;
                text-align: center;
                border-radius: 2px;
                position: absolute;
                z-index: 10;
                background: #ECEFF1;
                border: 1px solid #90A4AE;
            }

            .apexcharts-yaxistooltip.apexcharts-theme-dark {
                background: rgba(0, 0, 0, 0.7);
                border: 1px solid rgba(0, 0, 0, 0.5);
                color: #fff;
            }

            .apexcharts-yaxistooltip:after,
            .apexcharts-yaxistooltip:before {
                top: 50%;
                border: solid transparent;
                content: " ";
                height: 0;
                width: 0;
                position: absolute;
                pointer-events: none;
            }

            .apexcharts-yaxistooltip:after {
                border-color: rgba(236, 239, 241, 0);
                border-width: 6px;
                margin-top: -6px;
            }

            .apexcharts-yaxistooltip:before {
                border-color: rgba(144, 164, 174, 0);
                border-width: 7px;
                margin-top: -7px;
            }

            .apexcharts-yaxistooltip-left:after,
            .apexcharts-yaxistooltip-left:before {
                left: 100%;
            }

            .apexcharts-yaxistooltip-right:after,
            .apexcharts-yaxistooltip-right:before {
                right: 100%;
            }

            .apexcharts-yaxistooltip-left:after {
                border-left-color: #ECEFF1;
            }

            .apexcharts-yaxistooltip-left:before {
                border-left-color: #90A4AE;
            }

            .apexcharts-yaxistooltip-left.apexcharts-theme-dark:after {
                border-left-color: rgba(0, 0, 0, 0.5);
            }

            .apexcharts-yaxistooltip-left.apexcharts-theme-dark:before {
                border-left-color: rgba(0, 0, 0, 0.5);
            }

            .apexcharts-yaxistooltip-right:after {
                border-right-color: #ECEFF1;
            }

            .apexcharts-yaxistooltip-right:before {
                border-right-color: #90A4AE;
            }

            .apexcharts-yaxistooltip-right.apexcharts-theme-dark:after {
                border-right-color: rgba(0, 0, 0, 0.5);
            }

            .apexcharts-yaxistooltip-right.apexcharts-theme-dark:before {
                border-right-color: rgba(0, 0, 0, 0.5);
            }

            .apexcharts-yaxistooltip.apexcharts-active {
                opacity: 1;
            }

            .apexcharts-yaxistooltip-hidden {
                display: none;
            }

            .apexcharts-xcrosshairs,
            .apexcharts-ycrosshairs {
                pointer-events: none;
                opacity: 0;
                transition: 0.15s ease all;
            }

            .apexcharts-xcrosshairs.apexcharts-active,
            .apexcharts-ycrosshairs.apexcharts-active {
                opacity: 1;
                transition: 0.15s ease all;
            }

            .apexcharts-ycrosshairs-hidden {
                opacity: 0;
            }

            .apexcharts-selection-rect {
                cursor: move;
            }

            .svg_select_boundingRect, .svg_select_points_rot {
                pointer-events: none;
                opacity: 0;
                visibility: hidden;
            }
            .apexcharts-selection-rect + g .svg_select_boundingRect,
            .apexcharts-selection-rect + g .svg_select_points_rot {
                opacity: 0;
                visibility: hidden;
            }

            .apexcharts-selection-rect + g .svg_select_points_l,
            .apexcharts-selection-rect + g .svg_select_points_r {
                cursor: ew-resize;
                opacity: 1;
                visibility: visible;
            }

            .svg_select_points {
                fill: #efefef;
                stroke: #333;
                rx: 2;
            }

            .apexcharts-svg.apexcharts-zoomable.hovering-zoom {
                cursor: crosshair
            }

            .apexcharts-svg.apexcharts-zoomable.hovering-pan {
                cursor: move
            }

            .apexcharts-zoom-icon,
            .apexcharts-zoomin-icon,
            .apexcharts-zoomout-icon,
            .apexcharts-reset-icon,
            .apexcharts-pan-icon,
            .apexcharts-selection-icon,
            .apexcharts-menu-icon,
            .apexcharts-toolbar-custom-icon {
                cursor: pointer;
                width: 20px;
                height: 20px;
                line-height: 24px;
                color: #6E8192;
                text-align: center;
            }

            .apexcharts-zoom-icon svg,
            .apexcharts-zoomin-icon svg,
            .apexcharts-zoomout-icon svg,
            .apexcharts-reset-icon svg,
            .apexcharts-menu-icon svg {
                fill: #6E8192;
            }

            .apexcharts-selection-icon svg {
                fill: #444;
                transform: scale(0.76)
            }

            .apexcharts-theme-dark .apexcharts-zoom-icon svg,
            .apexcharts-theme-dark .apexcharts-zoomin-icon svg,
            .apexcharts-theme-dark .apexcharts-zoomout-icon svg,
            .apexcharts-theme-dark .apexcharts-reset-icon svg,
            .apexcharts-theme-dark .apexcharts-pan-icon svg,
            .apexcharts-theme-dark .apexcharts-selection-icon svg,
            .apexcharts-theme-dark .apexcharts-menu-icon svg,
            .apexcharts-theme-dark .apexcharts-toolbar-custom-icon svg {
                fill: #f3f4f5;
            }

            .apexcharts-canvas .apexcharts-zoom-icon.apexcharts-selected svg,
            .apexcharts-canvas .apexcharts-selection-icon.apexcharts-selected svg,
            .apexcharts-canvas .apexcharts-reset-zoom-icon.apexcharts-selected svg {
                fill: #008FFB;
            }

            .apexcharts-theme-light .apexcharts-selection-icon:not(.apexcharts-selected):hover svg,
            .apexcharts-theme-light .apexcharts-zoom-icon:not(.apexcharts-selected):hover svg,
            .apexcharts-theme-light .apexcharts-zoomin-icon:hover svg,
            .apexcharts-theme-light .apexcharts-zoomout-icon:hover svg,
            .apexcharts-theme-light .apexcharts-reset-icon:hover svg,
            .apexcharts-theme-light .apexcharts-menu-icon:hover svg {
                fill: #333;
            }

            .apexcharts-selection-icon,
            .apexcharts-menu-icon {
                position: relative;
            }

            .apexcharts-reset-icon {
                margin-left: 5px;
            }

            .apexcharts-zoom-icon,
            .apexcharts-reset-icon,
            .apexcharts-menu-icon {
                transform: scale(0.85);
            }

            .apexcharts-zoomin-icon,
            .apexcharts-zoomout-icon {
                transform: scale(0.7)
            }

            .apexcharts-zoomout-icon {
                margin-right: 3px;
            }

            .apexcharts-pan-icon {
                transform: scale(0.62);
                position: relative;
                left: 1px;
                top: 0px;
            }

            .apexcharts-pan-icon svg {
                fill: #fff;
                stroke: #6E8192;
                stroke-width: 2;
            }

            .apexcharts-pan-icon.apexcharts-selected svg {
                stroke: #008FFB;
            }

            .apexcharts-pan-icon:not(.apexcharts-selected):hover svg {
                stroke: #333;
            }

            .apexcharts-toolbar {
                position: absolute;
                z-index: 11;
                max-width: 176px;
                text-align: right;
                border-radius: 3px;
                padding: 0px 6px 2px 6px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .apexcharts-menu {
                background: #fff;
                position: absolute;
                top: 100%;
                border: 1px solid #ddd;
                border-radius: 3px;
                padding: 3px;
                right: 10px;
                opacity: 0;
                min-width: 110px;
                transition: 0.15s ease all;
                pointer-events: none;
            }

            .apexcharts-menu.apexcharts-menu-open {
                opacity: 1;
                pointer-events: all;
                transition: 0.15s ease all;
            }

            .apexcharts-menu-item {
                padding: 6px 7px;
                font-size: 12px;
                cursor: pointer;
            }

            .apexcharts-theme-light .apexcharts-menu-item:hover {
                background: #eee;
            }

            .apexcharts-theme-dark .apexcharts-menu {
                background: rgba(0, 0, 0, 0.7);
                color: #fff;
            }

            @media screen and (min-width: 768px) {
                .apexcharts-canvas:hover .apexcharts-toolbar {
                    opacity: 1;
                }
            }

            .apexcharts-datalabel.apexcharts-element-hidden {
                opacity: 0;
            }

            .apexcharts-pie-label,
            .apexcharts-datalabels,
            .apexcharts-datalabel,
            .apexcharts-datalabel-label,
            .apexcharts-datalabel-value {
                cursor: default;
                pointer-events: none;
            }

            .apexcharts-pie-label-delay {
                opacity: 0;
                animation-name: opaque;
                animation-duration: 0.3s;
                animation-fill-mode: forwards;
                animation-timing-function: ease;
            }

            .apexcharts-canvas .apexcharts-element-hidden {
                opacity: 0;
            }

            .apexcharts-hide .apexcharts-series-points {
                opacity: 0;
            }

            .apexcharts-gridline,
            .apexcharts-annotation-rect,
            .apexcharts-tooltip .apexcharts-marker,
            .apexcharts-area-series .apexcharts-area,
            .apexcharts-line,
            .apexcharts-zoom-rect,
            .apexcharts-toolbar svg,
            .apexcharts-area-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,
            .apexcharts-line-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,
            .apexcharts-radar-series path,
            .apexcharts-radar-series polygon {
                pointer-events: none;
            }


            /* markers */

            .apexcharts-marker {
                transition: 0.15s ease all;
            }

            @keyframes opaque {
                0% {
                    opacity: 0;
                }
                100% {
                    opacity: 1;
                }
            }


            /* Resize generated styles */

            @keyframes resizeanim {
                from {
                    opacity: 0;
                }
                to {
                    opacity: 0;
                }
            }

            .resize-triggers {
                animation: 1ms resizeanim;
                visibility: hidden;
                opacity: 0;
            }

            .resize-triggers,
            .resize-triggers>div,
            .contract-trigger:before {
                content: " ";
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                height: 100%;
                width: 100%;
                overflow: hidden;
            }

            .resize-triggers>div {
                background: #eee;
                overflow: auto;
            }

            .contract-trigger:before {
                width: 200%;
                height: 200%;
            }</style>
    </head>
    <!--end::Head-->
    <!--begin::Body-->
    <body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading">
        <!--begin::Main-->
        <!--begin::Header Mobile-->
        <%@include file="headermobile.jsp" %>
        <!--end::Header Mobile-->
        <div class="d-flex flex-column flex-root">
            <!--begin::Page-->
            <div class="d-flex flex-row flex-column-fluid page">
                <!--begin::Aside-->
                <%@include file="aside.jsp" %>
                <!--end::Aside-->
                <!--begin::Wrapper-->
                <div class="d-flex flex-column flex-row-fluid wrapper" id="kt_wrapper">
                    <!--begin::Header-->
                    <div class="header header-fixed" id="kt_header">
                        <!--begin::Container-->
                        <div class="container-fluid d-flex align-items-stretch justify-content-between">
                            <!--begin::Header Menu Wrapper-->
                            <div class="header-menu-wrapper header-menu-wrapper-left" id="kt_header_menu_wrapper">
                                <!--begin::Header Menu-->
                                <div id="kt_header_menu" class="header-menu header-menu-mobile header-menu-layout-default">
                                    <!--begin::Header Nav-->
                                    <ul class="menu-nav">
                                        <li class="menu-item menu-item-submenu menu-item-rel menu-item-active menu-item-open-dropdown" data-menu-toggle="click" aria-haspopup="true">
                                            <a href="javascript:;" class="menu-link menu-toggle">
                                                <span class="menu-text">Pages</span>
                                                <i class="menu-arrow"></i>
                                            </a>
                                            <div class="menu-submenu menu-submenu-classic menu-submenu-left" data-hor-direction="menu-submenu-left">
                                                <span>Coming soon</span>
                                            </div>
                                        </li>
                                        <li class="menu-item menu-item-submenu menu-item-open-dropdown" data-menu-toggle="click" aria-haspopup="true">
                                            <a href="javascript:;" class="menu-link menu-toggle">
                                                <span class="menu-text">Features</span>
                                                <i class="menu-arrow"></i>
                                            </a>
                                            <div class="menu-submenu menu-submenu-fixed menu-submenu-left" style="width:1000px" data-hor-direction="menu-submenu-left">
                                                <span>Coming soon</span>
                                            </div>
                                        </li>
                                        <li class="menu-item menu-item-submenu menu-item-rel menu-item-open-dropdown" data-menu-toggle="click" aria-haspopup="true">
                                            <a href="javascript:;" class="menu-link menu-toggle">
                                                <span class="menu-text">Apps</span>
                                                <i class="menu-arrow"></i>
                                            </a>
                                            <div class="menu-submenu menu-submenu-classic menu-submenu-left" data-hor-direction="menu-submenu-left">
                                                <span>Coming soon</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <!--end::Header Nav-->
                                </div>
                                <!--end::Header Menu-->
                            </div>
                            <!--end::Header Menu Wrapper-->
                            <!--begin::Topbar-->
                            <div class="topbar">
                                <!--begin::Search-->
                                <div class="dropdown" id="kt_quick_search_toggle">
                                    <!--begin::Toggle-->
                                    <div class="topbar-item" data-toggle="dropdown" data-offset="10px,0px" aria-expanded="false">
                                        <div class="btn btn-icon btn-clean btn-lg btn-dropdown mr-1">
                                            <span class="svg-icon svg-icon-xl svg-icon-primary">
                                                <!--begin::Svg Icon | path:assets/media/svg/icons/General/Search.svg-->
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                <path d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                <path d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z" fill="#000000" fill-rule="nonzero"></path>
                                                </g>
                                                </svg>
                                                <!--end::Svg Icon-->
                                            </span>
                                        </div>
                                    </div>
                                    <!--end::Toggle-->
                                    <!--begin::Dropdown-->
                                    <div class="dropdown-menu p-0 m-0 dropdown-menu-right dropdown-menu-anim-up dropdown-menu-lg" style="">
                                        <span>Coming soon</span>
                                    </div>
                                    <!--end::Dropdown-->
                                </div>
                                <!--end::Search-->
                                <!--begin::Languages-->
                                <div class="dropdown">
                                    <!--begin::Toggle-->
                                    <div class="topbar-item" data-toggle="dropdown" data-offset="10px,0px" aria-expanded="false">
                                        <div class="btn btn-icon btn-clean btn-dropdown btn-lg mr-1">
                                            <img class="h-20px w-20px rounded-sm" src="assets/media/svg/flags/226-united-states.svg" alt="">
                                        </div>
                                    </div>
                                    <!--end::Toggle-->
                                    <!--begin::Dropdown-->
                                    <div class="dropdown-menu p-0 m-0 dropdown-menu-anim-up dropdown-menu-sm dropdown-menu-right" style="">
                                        <!--begin::Nav-->
                                        <ul class="navi navi-hover py-4">
                                            <!--begin::Item-->
                                            <li class="navi-item">
                                                <a href="#" class="navi-link">
                                                    <span class="symbol symbol-20 mr-3">
                                                        <img src="assets/media/svg/flags/226-united-states.svg" alt="">
                                                    </span>
                                                    <span class="navi-text">English</span>
                                                </a>
                                            </li>
                                            <!--end::Item-->
                                            <!--begin::Item-->
                                            <li class="navi-item active">
                                                <a href="#" class="navi-link">
                                                    <span class="symbol symbol-20 mr-3">
                                                        <img src="assets/media/svg/flags/128-spain.svg" alt="">
                                                    </span>
                                                    <span class="navi-text">Spanish</span>
                                                </a>
                                            </li>
                                            <!--end::Item-->
                                            <!--begin::Item-->
                                            <li class="navi-item">
                                                <a href="#" class="navi-link">
                                                    <span class="symbol symbol-20 mr-3">
                                                        <img src="assets/media/svg/flags/162-germany.svg" alt="">
                                                    </span>
                                                    <span class="navi-text">German</span>
                                                </a>
                                            </li>
                                            <!--end::Item-->
                                            <!--begin::Item-->
                                            <li class="navi-item">
                                                <a href="#" class="navi-link">
                                                    <span class="symbol symbol-20 mr-3">
                                                        <img src="assets/media/svg/flags/063-japan.svg" alt="">
                                                    </span>
                                                    <span class="navi-text">Japanese</span>
                                                </a>
                                            </li>
                                            <!--end::Item-->
                                            <!--begin::Item-->
                                            <li class="navi-item">
                                                <a href="#" class="navi-link">
                                                    <span class="symbol symbol-20 mr-3">
                                                        <img src="assets/media/svg/flags/195-france.svg" alt="">
                                                    </span>
                                                    <span class="navi-text">French</span>
                                                </a>
                                            </li>
                                            <!--end::Item-->
                                        </ul>
                                        <!--end::Nav-->
                                    </div>
                                    <!--end::Dropdown-->
                                </div>
                                <!--end::Languages-->
                                <!--begin::User-->
                                <div class="topbar-item">
                                    <div class="btn btn-icon btn-icon-mobile w-auto btn-clean d-flex align-items-center btn-lg px-2" id="kt_quick_user_toggle">
                                        <span class="text-muted font-weight-bold font-size-base d-none d-md-inline mr-1">Hi,</span>
                                        <span class="text-dark-50 font-weight-bolder font-size-base d-none d-md-inline mr-3">Sean</span>
                                        <span class="symbol symbol-lg-35 symbol-25 symbol-light-success">
                                            <span class="symbol-label font-size-h5 font-weight-bold">S</span>
                                        </span>
                                    </div>
                                </div>
                                <!--end::User-->
                            </div>
                            <!--end::Topbar-->
                        </div>
                        <!--end::Container-->
                    </div>
                    <!--end::Header-->
                    <!--begin::Content-->
                    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
                        <!--begin::Subheader-->
                        <div class="subheader py-2 py-lg-6 subheader-solid" id="kt_subheader">
                            <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
                                <!--begin::Info-->
                                <div class="d-flex align-items-center flex-wrap mr-1">
                                    <!--begin::Page Heading-->
                                    <div class="d-flex align-items-baseline flex-wrap mr-5">
                                        <!--begin::Page Title-->
                                        <h5 class="text-dark font-weight-bold my-1 mr-5">Column Rendering Examples</h5>
                                        <!--end::Page Title-->
                                        <!--begin::Breadcrumb-->
                                        <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
                                            <li class="breadcrumb-item">
                                                <a href="" class="text-muted">Crud</a>
                                            </li>
                                            <li class="breadcrumb-item">
                                                <a href="" class="text-muted">Datatables.net</a>
                                            </li>
                                            <li class="breadcrumb-item">
                                                <a href="" class="text-muted">Advanced</a>
                                            </li>
                                            <li class="breadcrumb-item">
                                                <a href="" class="text-muted">Column Rendering</a>
                                            </li>
                                        </ul>
                                        <!--end::Breadcrumb-->
                                    </div>
                                    <!--end::Page Heading-->
                                </div>
                                <!--end::Info-->
                                <!--begin::Toolbar-->
                                <div class="d-flex align-items-center">
                                    <!--begin::Actions-->
                                    <a href="#" class="btn btn-light-primary font-weight-bolder btn-sm">Actions</a>
                                    <!--end::Actions-->
                                    <!--begin::Dropdown-->
                                    <div class="dropdown dropdown-inline" data-toggle="tooltip" title="" data-placement="left" data-original-title="Quick actions">
                                        <a href="#" class="btn btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <span class="svg-icon svg-icon-success svg-icon-2x">
                                                <!--begin::Svg Icon | path:assets/media/svg/icons/Files/File-plus.svg-->
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                <polygon points="0 0 24 0 24 24 0 24"></polygon>
                                                <path d="M5.85714286,2 L13.7364114,2 C14.0910962,2 14.4343066,2.12568431 14.7051108,2.35473959 L19.4686994,6.3839416 C19.8056532,6.66894833 20,7.08787823 20,7.52920201 L20,20.0833333 C20,21.8738751 19.9795521,22 18.1428571,22 L5.85714286,22 C4.02044787,22 4,21.8738751 4,20.0833333 L4,3.91666667 C4,2.12612489 4.02044787,2 5.85714286,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                <path d="M11,14 L9,14 C8.44771525,14 8,13.5522847 8,13 C8,12.4477153 8.44771525,12 9,12 L11,12 L11,10 C11,9.44771525 11.4477153,9 12,9 C12.5522847,9 13,9.44771525 13,10 L13,12 L15,12 C15.5522847,12 16,12.4477153 16,13 C16,13.5522847 15.5522847,14 15,14 L13,14 L13,16 C13,16.5522847 12.5522847,17 12,17 C11.4477153,17 11,16.5522847 11,16 L11,14 Z" fill="#000000"></path>
                                                </g>
                                                </svg>
                                                <!--end::Svg Icon-->
                                            </span>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-md dropdown-menu-right p-0 m-0">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover">
                                                <li class="navi-header font-weight-bold py-4">
                                                    <span class="font-size-lg">Choose Label:</span>
                                                    <i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right" title="" data-original-title="Click to learn more..."></i>
                                                </li>
                                                <li class="navi-separator mb-3 opacity-70"></li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-success">Customer</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-danger">Partner</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-warning">Suplier</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-primary">Member</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-dark">Staff</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-separator mt-3 opacity-70"></li>
                                                <li class="navi-footer py-4">
                                                    <a class="btn btn-clean font-weight-bold btn-sm" href="#">
                                                        <i class="ki ki-plus icon-sm"></i>Add new</a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                    <!--end::Dropdown-->
                                </div>
                                <!--end::Toolbar-->
                            </div>
                        </div>
                        <!--end::Subheader-->
                        <!--begin::Entry-->
                        <div class="d-flex flex-column-fluid">
                            <!--begin::Container-->
                            <div class="container">                                
                                <!--begin::Card-->
                                <div class="card card-custom gutter-b example example-compact">
                                    <div class="card-header">
                                        <h3 class="card-title">Product's Information</h3>
                                    </div>
                                    <!--begin::Form-->
                                    <form class="form" action="${pageContext.request.contextPath}/ThemSanPham" method="post">
                                        <div class="card-body">
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label text-lg-right">Name:</label>
                                                <div class="col-lg-3">
                                                    <input name="nameProduct" type="text" class="form-control" placeholder="Enter product's name">
                                                </div>
                                                <label class="col-lg-2 col-form-label text-lg-right">Category</label>
                                                <div class="col-lg-3">
                                                    <div class="dropdown bootstrap-select form-control">
                                                        <div class="dropdown bootstrap-select form-control">
                                                            <select class="form-control selectpicker" name="cagetoryProduct">
                                                                <option name="computer" value="1">Computer And Accessories</option>
                                                                <option name="audio" value="2">Audio</option>
                                                                <option name="laptop" value="3">Laptop</option>
                                                                <option name="tv" value="4">TV</option>
                                                                <option name="mobile" value="5">Mobile</option>
                                                                <option name="headphone" value="6">Head Phones</option>
                                                                <option name="battery" value="7">Battery</option>
                                                                <option name="watches" value="8">Watches</option>
                                                                <option name="camera" value="9">Camera</option>
                                                            </select>
                                                        </div>
                                                        <div class="dropdown-menu ">
                                                            <div class="inner show" role="listbox" id="bs-select-1" tabindex="-1">
                                                                <ul class="dropdown-menu inner show" role="presentation">
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label text-lg-right">Price:</label>
                                                <div class="col-lg-3">
                                                    <div class="input-group">
                                                        <input id="kt_touchspin_1" type="text" class="form-control" value="0" name="priceProduct" placeholder="">
                                                        <div class="input-group-append">
                                                            <span class="input-group-text">
                                                                <span> $ </span>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <label class="col-lg-2 col-form-label text-lg-right">Amount:</label>
                                                <div class="col-lg-4 col-md-9 col-sm-12">
                                                    <div class="input-group  bootstrap-touchspin bootstrap-touchspin-injected">
                                                        <input id="kt_touchspin_4" type="text" class="form-control bootstrap-touchspin-vertical-btn" value="0" name="amountProduct" placeholder="">
                                                        <span class="input-group-btn-vertical"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label text-lg-right">Image</label>
                                                <div class="col-lg-3">
                                                    <div class="image-input image-input-outline" id="kt_image_1">
                                                        <div class="image-input-wrapper" style="background-image: url(products/img-4.jpg)"></div>                                                        <label class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="change" data-toggle="tooltip" title="" data-original-title="Change avatar">
                                                            <i class="fa fa-pen icon-sm text-muted"></i>
                                                            <input type="file" name="profile_avatar" accept=".png, .jpg, .jpeg">
                                                            <input type="hidden" name="profile_avatar_remove">
                                                        </label>
                                                        <span class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="cancel" data-toggle="tooltip" title="" data-original-title="Cancel avatar">
                                                            <i class="ki ki-bold-close icon-xs text-muted"></i>
                                                        </span>
                                                    </div>
                                                    <span class="form-text text-muted">Allowed file types: png, jpg, jpeg.</span>
                                                </div>
                                                <label class="col-lg-2 col-form-label text-lg-right">Description:</label>
                                                <div class="col-lg-4 col-md-9 col-sm-12">
                                                    <textarea class="form-control" id="kt_clipboard_2" rows="6" name="descriptionProduct"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-footer">
                                            <div class="row">
                                                <div class="col-lg-2"></div>
                                                <div class="col-lg-10">
                                                    <button type="submit" class="btn btn-success mr-2">Submit</button>
                                                    <button type="reset" class="btn btn-secondary">Cancel</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <!--end::Form-->
                                </div>
                                <!--end::Card-->
                            </div>
                            <!--end::Container-->
                        </div>
                        <!--end::Entry-->
                    </div>
                    <!--end::Content-->
                    <!--begin::Footer-->
                    <div class="footer bg-white py-4 d-flex flex-lg-column" id="kt_footer">
                        <!--begin::Container-->
                        <div class="container-fluid d-flex flex-column flex-md-row align-items-center justify-content-between">
                            <!--begin::Copyright-->
                            <div class="text-dark order-2 order-md-1">
                                <span class="text-muted font-weight-bold mr-2">2020©</span>
                                <a href="#" target="_blank" class="text-dark-75 text-hover-primary">Keenthemes</a>
                            </div>
                            <!--end::Copyright-->
                            <!--begin::Nav-->
                            <div class="nav nav-dark">
                                <a href="#" target="_blank" class="nav-link pl-0 pr-5">About</a>
                                <a href="#" target="_blank" class="nav-link pl-0 pr-5">Team</a>
                                <a href="#" target="_blank" class="nav-link pl-0 pr-0">Contact</a>
                            </div>
                            <!--end::Nav-->
                        </div>
                        <!--end::Container-->
                    </div>
                    <!--end::Footer-->
                </div>
                <!--end::Wrapper-->
            </div>
            <!--end::Page-->
        </div>
        <!--end::Main-->
        <script>var HOST_URL = "https://preview.keenthemes.com/metronic/theme/html/tools/preview";</script>
        <!--begin::Global Config(global config for global JS scripts)-->
        <script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1400 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#3699FF", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#E4E6EF", "dark": "#181C32" }, "light": { "white": "#ffffff", "primary": "#E1F0FF", "secondary": "#EBEDF3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#3F4254", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#EBEDF3", "gray-300": "#E4E6EF", "gray-400": "#D1D3E0", "gray-500": "#B5B5C3", "gray-600": "#7E8299", "gray-700": "#5E6278", "gray-800": "#3F4254", "gray-900": "#181C32" } }, "font-family": "Poppins" };</script>
        <!--end::Global Config-->
        <!--begin::Global Theme Bundle(used by all pages)-->
        <script src="assets/plugins/global/plugins.bundle.js"></script>
        <script src="assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
        <script src="assets/js/scripts.bundle.js"></script>
        <!--end::Global Theme Bundle-->
        <!--begin::Page Vendors(used by this page)-->
        <script src="assets/js/pages/crud/file-upload/image-input.js"></script>
        <!--end::Page Vendors-->
        <!--begin::Page Scripts(used by this page)-->
        <script src="assets/js/pages/widgets.js"></script>
        <script src="assets/js/pages/crud/forms/widgets/bootstrap-touchspin.js"></script>
        <script src="assets/js/pages/crud/forms/widgets/bootstrap-select.js"></script>
        <!--end::Page Scripts-->
    </body>
    <!--end::Body-->
</html>