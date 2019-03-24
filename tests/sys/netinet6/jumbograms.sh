# $FreeBSD$

. $(atf_get_srcdir)/utils.subr

atf_test_case "jumbogram" "cleanup"

jumbogram_body()
{
	v6_init
	v6_scapytest 'v6_jumbograms' 'v6_jumbogram.py'
}

rfc2675_cleanup()
{
	v6_cleanup
}



atf_init_test_cases()
{
	atf_add_test_case "jumbogram"
}
