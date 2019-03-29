# $FreeBSD$

. $(atf_get_srcdir)/utils.subr

atf_test_case "jumbogram" "cleanup"

jumbogram_body()
{
	v6_init
	v6_scapytest 'v6_jumbograms' 'v6_jumbogram.py'
}

jumbogram_cleanup()
{
	v6_cleanup
}


atf_test_case "invalid_packet1" "cleanup"
invalid_packet1_body()
{
	echo 'fooo' >> /tmp/this_is_a_test.log
	v6_init
	v6_scapytest 'v6_jumbograms' 'v6_jumbo_invalid_packet01.py'
}

invalid_packet1_cleanup()
{
	v6_cleanup
}


atf_init_test_cases()
{
	atf_add_test_case "jumbogram"
	atf_add_test_case "invalid_packet1"
}
