# $FreeBSD$

. $(atf_get_srcdir)/utils.subr

atf_test_case "frag6" "cleanup"

frag6_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6.py'
}

frag6_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_ext" "cleanup"

frag6_ext_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_ext.py'
}

frag6_ext_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_hop" "cleanup"

frag6_hop_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_hop.py'
}

frag6_hop_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_maxlen" "cleanup"

frag6_maxlen_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_maxlen.py'
}

frag6_maxlen_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_mf0atomic" "cleanup"

frag6_mf0atomic_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_mf0atomic.py'
}

frag6_mf0atomic_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_mf0long" "cleanup"

frag6_mf0long_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_mf0long.py'
}

frag6_mf0long_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_mf0middle" "cleanup"

frag6_mf0middle_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_mf0middle.py'
}

frag6_mf0middle_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_mf0short" "cleanup"

frag6_mf0short_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_mf0short.py'
}

frag6_mf0short_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_mf1end" "cleanup"

frag6_mf1end_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_mf1end.py'
}

frag6_mf1end_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_opt" "cleanup"

frag6_opt_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_opt.py'
}

frag6_opt_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_overatomic" "cleanup"

frag6_overatomic_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_overatomic.py'
}

frag6_overatomic_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_overdrop" "cleanup"

frag6_overdrop_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_overdrop.py'
}

frag6_overdrop_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_overhead" "cleanup"

frag6_overhead_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_overhead.py'
}

frag6_overhead_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_overhead0" "cleanup"

frag6_overhead0_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_overhead0.py'
}

frag6_overhead0_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_overhead1" "cleanup"

frag6_overhead1_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_overhead1.py'
}

frag6_overhead1_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_overtail" "cleanup"

frag6_overtail_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_overtail.py'
}

frag6_overtail_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_overtail0" "cleanup"

frag6_overtail0_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_overtail0.py'
}

frag6_overtail0_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_overtail1" "cleanup"

frag6_overtail1_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_overtail1.py'
}

frag6_overtail1_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_padding" "cleanup"

frag6_padding_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_padding.py'
}

frag6_padding_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_permute" "cleanup"

frag6_permute_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_permute.py'
}

frag6_permute_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_queuelimit" "cleanup"

frag6_queuelimit_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_queuelimit.py'
}

frag6_queuelimit_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_refrag" "cleanup"

frag6_refrag_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_refrag.py'
}

frag6_refrag_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_shortatomic" "cleanup"

frag6_shortatomic_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_shortatomic.py'
}

frag6_shortatomic_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_timeout" "cleanup"

frag6_timeout_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_timeout.py'
}

frag6_timeout_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_udpatomic" "cleanup"

frag6_udpatomic_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_udpatomic.py'
}

frag6_udpatomic_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_udpheader" "cleanup"

frag6_udpheader_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_udpheader.py'
}

frag6_udpheader_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_udppayload" "cleanup"

frag6_udppayload_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_udppayload.py'
}

frag6_udppayload_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_zerofirst" "cleanup"

frag6_zerofirst_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_zerofirst.py'
}

frag6_zerofirst_cleanup()
{
	v6_cleanup
}

atf_test_case "frag6_zerosecond" "cleanup"

frag6_zerosecond_body()
{
	v6_init
	v6_scapytest 'regress/frag6' 'frag6_zerosecond.py'
}

frag6_zerosecond_cleanup()
{
	v6_cleanup
}

atf_init_test_cases()
{
	atf_add_test_case "frag6"
	atf_add_test_case "frag6_ext"
	atf_add_test_case "frag6_hop"
	atf_add_test_case "frag6_maxlen"
	atf_add_test_case "frag6_mf0atomic"
	atf_add_test_case "frag6_mf0long"
	atf_add_test_case "frag6_mf0middle"
	atf_add_test_case "frag6_mf0short"
	atf_add_test_case "frag6_mf1end"
	atf_add_test_case "frag6_opt"
	atf_add_test_case "frag6_overatomic"
	atf_add_test_case "frag6_overdrop"
	atf_add_test_case "frag6_overhead"
	atf_add_test_case "frag6_overhead0"
	atf_add_test_case "frag6_overhead1"
	atf_add_test_case "frag6_overtail"
	atf_add_test_case "frag6_overtail0"
	atf_add_test_case "frag6_overtail1"
	atf_add_test_case "frag6_padding"
	atf_add_test_case "frag6_permute"
	atf_add_test_case "frag6_queuelimit"
	atf_add_test_case "frag6_refrag"
	atf_add_test_case "frag6_shortatomic"
	atf_add_test_case "frag6_timeout"
	atf_add_test_case "frag6_udpatomic"
	atf_add_test_case "frag6_udpheader"
	atf_add_test_case "frag6_udppayload"
	atf_add_test_case "frag6_zerofirst"
	atf_add_test_case "frag6_zerosecond"
}
