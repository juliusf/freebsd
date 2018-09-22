# $FreeBSD$

. $(atf_get_srcdir)/utils.subr

atf_test_case "frag6" "cleanup"

frag6_head()
{
	atf_set descr 'regress/frag6/frag6.py'
	atf_set require.user root
}

frag6_body()
{
	v6_init
	#v6_scapytest 'regress/frag6/frag6.py'
}

frag6_cleanup()
{
	v6_cleanup
}

atf_init_test_cases()
{
	atf_add_test_case "frag6"
}
