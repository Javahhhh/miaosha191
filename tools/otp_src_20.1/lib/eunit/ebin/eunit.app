% This is an -*- erlang -*- file.

{application, eunit,
 [{description, "EUnit"},
  {vsn, "2.3.4"},
  {modules, [eunit,
	     eunit_autoexport,
	     eunit_data,
	     eunit_lib,
	     eunit_listener,
	     eunit_proc,
	     eunit_serial,
	     eunit_server,
	     eunit_striptests,
	     eunit_surefire,
	     eunit_test,
	     eunit_tests,
	     eunit_tty]},
  {registered,[]},
  {applications, [kernel,stdlib]},
  {env, []},
  {runtime_dependencies, ["stdlib-3.4","kernel-5.3","erts-9.0"]}]}.
