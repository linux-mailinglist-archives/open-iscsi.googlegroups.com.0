Return-Path: <open-iscsi+bncBAABB5MSWCLQMGQECEFQSRQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2257E58A020
	for <lists+open-iscsi@lfdr.de>; Thu,  4 Aug 2022 20:01:29 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id u15-20020a05620a0c4f00b006b8b3f41303sf148475qki.8
        for <lists+open-iscsi@lfdr.de>; Thu, 04 Aug 2022 11:01:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1659636088; cv=pass;
        d=google.com; s=arc-20160816;
        b=g8R6+KNayRRVQqcnBsSV2gZyPPsoHa5bl8rAkc8DwPz05lYZ1rJaleqVw6t8BXP3Ps
         eKS3uBRPQVTno/EodozYcwkS83tHebQeylfWk9pkLRgO6lD1FNWpA4q0tuzx2KtM0a1w
         Tutek6xdMjPZHT0Y9QrHANaEy2xuqa5vFan3nbqUrxQTciV+ehjHXsKwwpAmocBGP3qc
         kMPAK8sO9Kx62kvC4QVv1elHSOeLw4hkOFlNZk8J8hMivL96MoKBemkpCrl/Q9M1CpaA
         UxhtnFKHI3TNeDfzPpJ0N7h+cR2YK5uSBavKg278exWVobb71crGjX9k2vkEBbJ4lmnQ
         OiKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=nYJSAG78BCHzC8LneJCoYQKnBYCyTYBXvrmM8juB9nw=;
        b=eDCBg+Xk5LIPJJXR2TmZ3Dp8Q7vE4dvEhwsgZRT5zQwHnAKlq8/Kg54paCV1VdrcZJ
         PGuUvytK0udNrg0qbpEll9BMrABVt3KG4o/Z63SdJ6slkDbVjtBi4KOrSoWhXNfPe1w9
         d/qTx9mdyOdQRCIcinrMXEP2ujdy2iRM8J18PIOVZhQ2VRy3PogvRp/yhs2X0AjAFYlp
         /rKC3Xoe6P/BBSqfNs4FcW8qOzeJvBDHkYpfEncXFeF3RaOopPrBBPgB1MTsdUKBy3Uo
         3B7F8qh3qXh4FGs3siZHxqgkxH7JFf/HNRLyGhBWQoJWUUilXHZWLGSAuxCox/BWyR1f
         KTog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=KIAcXWC2;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc;
        bh=nYJSAG78BCHzC8LneJCoYQKnBYCyTYBXvrmM8juB9nw=;
        b=PBO8EgjGdoYIAlVThmM9zTdNuzhpDFGPS/Sqy00aXKmujDma3piA0vDbdaJh5Op+XI
         6RtoD1ywzxqBqdpVtg+gxMyp8603JmddMDY+NRYYDfLiosjdmP8itYtc9zn6sOLtukp1
         u82Zq9Yga/RNd40mfRq5WOz9C2qRFDGXtQftM+hG8/vNjOeY0pkwpYdpmLXAnuW06cqD
         k3SDuZ46Vn1NmiWwCUft7WYVB2ycKrYyteP7W68jxWHRUj4F/2giwqbgQSbUFZQkMvNF
         nvWceNQhCup0D6DBdu02LQT0K+oaxbjfEdCeQMMxi9fOwRLyKt8EAQhCRjLTjicIGnVm
         pSpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=nYJSAG78BCHzC8LneJCoYQKnBYCyTYBXvrmM8juB9nw=;
        b=a0rNzne1NzdP3hwAlmmmt/juWi07dsbfjARbdsca8bngqgoBVamRLbaUFRZuEXhVDL
         N1eAj8AdWREqjPdyqxiuFlt/RE3JUzWHgQSAaMS4uWIXVzKD57PyhGf1lxUEou6OaaDu
         65oX8B4BeM+Ng6SFkxrvNRM8RUNfsbEB4/exRqUTh5eXkXegTrCeW3kEFQtGt6EOn60m
         c3Y1LV9LuO3gliIa9eArD4PeTZ0/IuOMjVaGYJjU1C/vGm58esOs2vQWBKZWoIth7pIB
         hOMz4qQp5E1DuFsE45Ty9QymMe/14xJx3Wo8hX0t5UdYf4w5g4IFS1eWg4e6ikr0v1cB
         W3mw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo3YCcJKMnlUu/XZ/+oG27TI6dIXiW/k3HEVN87V5EwH3LrBB2Ol
	ILFDnIjfPLY+/ejwcF+LfvE=
X-Google-Smtp-Source: AA6agR7ESIe2/BSf7uPawGDEfr4yfhIV/SA8dVn/zeB7wYLf/FrgKq4WO0qm97VzBjH3Jvb3fWcSmQ==
X-Received: by 2002:a05:6214:411e:b0:474:991e:37bd with SMTP id kc30-20020a056214411e00b00474991e37bdmr2543926qvb.125.1659636087613;
        Thu, 04 Aug 2022 11:01:27 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:f816:0:b0:6b2:5574:7ca3 with SMTP id x22-20020ae9f816000000b006b255747ca3ls1761702qkh.7.-pod-prod-gmail;
 Thu, 04 Aug 2022 11:01:25 -0700 (PDT)
X-Received: by 2002:a05:620a:191d:b0:6b8:6538:6cad with SMTP id bj29-20020a05620a191d00b006b865386cadmr2338090qkb.307.1659636085707;
        Thu, 04 Aug 2022 11:01:25 -0700 (PDT)
Received: by 2002:a05:620a:29c9:b0:6af:2a2b:4ad1 with SMTP id af79cd13be357-6b8cf7cfc4ams85a;
        Tue, 2 Aug 2022 15:11:44 -0700 (PDT)
X-Received: by 2002:a05:6512:250b:b0:48b:2c5:fe1e with SMTP id be11-20020a056512250b00b0048b02c5fe1emr3453692lfb.598.1659478303482;
        Tue, 02 Aug 2022 15:11:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1659478303; cv=none;
        d=google.com; s=arc-20160816;
        b=nJuTuevVCnBNBCAFLI6G+0hyJoDXK7QluHWi+uB4tJWTLVGq3oIeV+EfxGNqEQO1vT
         ajIMm/A2cAmDGCxSAAl4wNNOl+jq0dYAPcewQM4UcNdjtgnPyMv07hbI9Q39OzIQ5hqv
         Rz1JvigtDyBScULFhPHkxY9qWs0PMHIsSSwnun6KiOplTLY3EklpkMTHoXuy3+24+VZE
         j6ktXrvjNIw1bHQULeBgHOh4Bwk3khLflML0ZGtcSN69ERxkmbDWsaurtrjA/ynhSdbn
         QVOf2VC6+pd6/hj479vygKwdvURI/0kraceRhKakc8RiXmWcbGDkxlZErAd/9p9qKESQ
         gtdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jErLUGQPBqaw1UqV7HJLN01ReSCLbpF5fL0jQIy1w+I=;
        b=ruFR0AN6KvDal0njpuJJc0MLUh6t3efYQ5+T63HUyv4Z6TZHIoh24MB7OASkKnLpf3
         FHpQP0J1seZT0Eegmjcz8Gt1Hx16WfiF8Z4Qx54+Nf63g1R+tKMx5B044bGMHrPlmmmd
         +ssBC6B6PNIIbD0ccKtRznrhSuQcuwGP2sdXJaJxTvrwaAYy5YDGjkwC4X5wEYAQtHZf
         A3SfovU+OxKvukRSaF7NI10Qwfm67AH6ZzbJOFSV0PTlxLy0jNm5QaLeLybei2+hF5Zl
         DIZOmSBtZbFCbgeS+z1IJlPfNNFqaxGfMfMdRl1XjjcoE4mQdE2iAWp8TF9wzBH6+Pgi
         BUQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=KIAcXWC2;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id o7-20020ac25e27000000b0048b12871da5si97397lfg.4.2022.08.02.15.11.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Aug 2022 15:11:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="289541085"
X-IronPort-AV: E=Sophos;i="5.93,212,1654585200"; 
   d="scan'208";a="289541085"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Aug 2022 15:11:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,212,1654585200"; 
   d="scan'208";a="728989347"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 02 Aug 2022 15:11:36 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oJ06y-000GVS-0r;
	Tue, 02 Aug 2022 22:11:36 +0000
Date: Wed, 3 Aug 2022 06:11:23 +0800
From: kernel test robot <lkp@intel.com>
To: Li Jinlin <lijinlin3@huawei.com>, lduncan@suse.com, cleech@redhat.com,
	michael.christie@oracle.com, jejb@linux.ibm.com,
	martin.petersen@oracle.com, mark.mielke@gmail.com
Cc: kbuild-all@lists.01.org, open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
	linfeilong@huawei.com, liuzhiqiang26@huawei.com
Subject: Re: [PATCH] scsi: iscsi: iscsi_tcp: Fix null-ptr-deref while calling
 getpeername()
Message-ID: <202208030633.x2jgVRIa-lkp@intel.com>
References: <20220802101939.3972556-1-lijinlin3@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220802101939.3972556-1-lijinlin3@huawei.com>
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=KIAcXWC2;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Hi Li,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on mkp-scsi/for-next]
[also build test WARNING on jejb-scsi/for-next linus/master v5.19 next-20220728]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Li-Jinlin/scsi-iscsi-iscsi_tcp-Fix-null-ptr-deref-while-calling-getpeername/20220802-173945
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-next
config: loongarch-randconfig-s041-20220801 (https://download.01.org/0day-ci/archive/20220803/202208030633.x2jgVRIa-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 12.1.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # apt-get install sparse
        # sparse version: v0.6.4-39-gce1a6720-dirty
        # https://github.com/intel-lab-lkp/linux/commit/ccc367df3fdba07b24eeda721ca928cce50f40d2
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Li-Jinlin/scsi-iscsi-iscsi_tcp-Fix-null-ptr-deref-while-calling-getpeername/20220802-173945
        git checkout ccc367df3fdba07b24eeda721ca928cce50f40d2
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' O=build_dir ARCH=loongarch SHELL=/bin/bash drivers/scsi/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

sparse warnings: (new ones prefixed by >>)
   drivers/scsi/iscsi_tcp.c:798:26: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected unsigned int fd @@     got struct file *file @@
   drivers/scsi/iscsi_tcp.c:798:26: sparse:     expected unsigned int fd
   drivers/scsi/iscsi_tcp.c:798:26: sparse:     got struct file *file
   drivers/scsi/iscsi_tcp.c:852:26: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected unsigned int fd @@     got struct file *file @@
   drivers/scsi/iscsi_tcp.c:852:26: sparse:     expected unsigned int fd
   drivers/scsi/iscsi_tcp.c:852:26: sparse:     got struct file *file
>> drivers/scsi/iscsi_tcp.c:798:22: sparse: sparse: non size-preserving pointer to integer cast
   drivers/scsi/iscsi_tcp.c:852:22: sparse: sparse: non size-preserving pointer to integer cast

vim +798 drivers/scsi/iscsi_tcp.c

   777	
   778	static int iscsi_sw_tcp_conn_get_param(struct iscsi_cls_conn *cls_conn,
   779					       enum iscsi_param param, char *buf)
   780	{
   781		struct iscsi_conn *conn = cls_conn->dd_data;
   782		struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
   783		struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
   784		struct sockaddr_in6 addr;
   785		struct socket *sock;
   786		int rc;
   787	
   788		switch(param) {
   789		case ISCSI_PARAM_CONN_PORT:
   790		case ISCSI_PARAM_CONN_ADDRESS:
   791		case ISCSI_PARAM_LOCAL_PORT:
   792			spin_lock_bh(&conn->session->frwd_lock);
   793			if (!tcp_sw_conn || !tcp_sw_conn->sock) {
   794				spin_unlock_bh(&conn->session->frwd_lock);
   795				return -ENOTCONN;
   796			}
   797			sock = tcp_sw_conn->sock;
 > 798			fget(sock->file);
   799			spin_unlock_bh(&conn->session->frwd_lock);
   800	
   801			if (param == ISCSI_PARAM_LOCAL_PORT)
   802				rc = kernel_getsockname(sock,
   803							(struct sockaddr *)&addr);
   804			else
   805				rc = kernel_getpeername(sock,
   806							(struct sockaddr *)&addr);
   807			spin_lock_bh(&conn->session->frwd_lock);
   808			sockfd_put(sock);
   809			spin_unlock_bh(&conn->session->frwd_lock);
   810			if (rc < 0)
   811				return rc;
   812	
   813			return iscsi_conn_get_addr_param((struct sockaddr_storage *)
   814							 &addr, param, buf);
   815		default:
   816			return iscsi_conn_get_param(cls_conn, param, buf);
   817		}
   818	
   819		return 0;
   820	}
   821	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/202208030633.x2jgVRIa-lkp%40intel.com.
