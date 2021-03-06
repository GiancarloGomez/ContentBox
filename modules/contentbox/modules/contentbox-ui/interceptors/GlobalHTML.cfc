﻿/**
********************************************************************************
ContentBox - A Modular Content Platform
Copyright 2012 by Luis Majano and Ortus Solutions, Corp
www.ortussolutions.com
********************************************************************************
Apache License, Version 2.0

Copyright Since [2012] [Luis Majano and Ortus Solutions,Corp]

Licensed under the Apache License, Version 2.0 (the "License" );
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
********************************************************************************
* Manages Global HTML Interception Points
*/
component extends="coldbox.system.Interceptor"{

	function configure(){}

	function cbui_beforeHeadEnd( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_beforeHeadEnd );
	}
	function cbui_afterBodyStart( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_afterBodyStart );
	}
	function cbui_beforeBodyEnd( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_beforeBodyEnd );
	}
	function cbui_beforeContent( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_beforeContent );
	}
	function cbui_afterContent( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_afterContent );
	}
	function cbui_beforeSideBar( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_beforeSideBar );
	}
	function cbui_afterSideBar( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_afterSideBar );
	}
	function cbui_footer( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_afterFooter );
	}
	function cbui_preEntryDisplay( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_preEntryDisplay );
	}
	function cbui_postEntryDisplay( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_postEntryDisplay );
	}
	function cbui_preIndexDisplay( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_preIndexDisplay );
	}
	function cbui_postIndexDisplay( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_postIndexDisplay );
	}
	function cbui_preArchivesDisplay( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_preArchivesDisplay );
	}
	function cbui_postArchivesDisplay( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_postArchivesDisplay );
	}
	function cbui_preCommentForm( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_preCommentForm );
	}
	function cbui_postCommentForm( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_postCommentForm );
	}
	function cbui_prePageDisplay( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_prePageDisplay );
	}
	function cbui_postPageDisplay( event, data, buffer ){
		arguments.buffer.append( getSettings( event ).cb_html_postPageDisplay );
	}

	private function getSettings( event ){
		return event.getPrivateValue( name="cbSiteSettings" );
	}

}