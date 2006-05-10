--  This file is part of dotLRN.
--
--  dotLRN is free software; you can redistribute it and/or modify it under the
--  terms of the GNU General Public License as published by the Free Software
--  Foundation; either version 2 of the License, or (at your option) any later
--  version.
--
--  dotLRN is distributed in the hope that it will be useful, but WITHOUT ANY
--  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
--  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
--  details.
--
-- The beehive applet for dotLRN
--
-- @author Aimant (aimant@mm.st)
-- @creation-date 2004-04-10
-- @cvs-id $Id$
--

-- create the implementation
select acs_sc_impl__new (
		'dotlrn_applet',
		'dotlrn_beehive',
		'dotlrn_beehive'
);

-- add all the hooks

-- GetPrettyName
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_beehive',
	       'GetPrettyName',
	       'dotlrn_beehive::get_pretty_name',
	       'TCL'
);

-- AddApplet
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_beehive',
	       'AddApplet',
	       'dotlrn_beehive::add_applet',
	       'TCL'
);

-- RemoveApplet
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_beehive',
	       'RemoveApplet',
	       'dotlrn_beehive::remove_applet',
	       'TCL'
);

-- AddAppletToCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_beehive',
	       'AddAppletToCommunity',
	       'dotlrn_beehive::add_applet_to_community',
	       'TCL'
);

-- RemoveAppletFromCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_beehive',
	       'RemoveAppletFromCommunity',
	       'dotlrn_beehive::remove_applet_from_community',
	       'TCL'
);

-- AddUser
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_beehive',
	       'AddUser',
	       'dotlrn_beehive::add_user',
	       'TCL'
);

-- RemoveUser
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_beehive',
	       'RemoveUser',
	       'dotlrn_beehive::remove_user',
	       'TCL'
);

-- AddUserToCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_beehive',
	       'AddUserToCommunity',
	       'dotlrn_beehive::add_user_to_community',
	       'TCL'
);

-- RemoveUserFromCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_beehive',
	       'RemoveUserFromCommunity',
	       'dotlrn_beehive::remove_user_from_community',
	       'TCL'
);

-- AddPortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_beehive',
        'AddPortlet',
        'dotlrn_beehive::add_portlet',
        'TCL'
    );

-- RemovePortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_beehive',
        'RemovePortlet',
        'dotlrn_beehive::remove_portlet',
        'TCL'
);

-- Clone
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_beehive',
        'Clone',
        'dotlrn_beehive::clone',
        'TCL'
);

select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_beehive',
        'ChangeEventHandler',
        'dotlrn_beehive::change_event_handler',
        'TCL'
);

-- Add the binding
select acs_sc_binding__new (
	    'dotlrn_applet',
	    'dotlrn_beehive'
);
