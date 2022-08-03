Return-Path: <open-iscsi+bncBAABB5MSWCLQMGQECEFQSRQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 339EC58A01C
	for <lists+open-iscsi@lfdr.de>; Thu,  4 Aug 2022 20:01:28 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id s9-20020a05620a254900b006b54dd4d6desf164671qko.3
        for <lists+open-iscsi@lfdr.de>; Thu, 04 Aug 2022 11:01:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1659636087; cv=pass;
        d=google.com; s=arc-20160816;
        b=fQN1Ky/z5utIAJ9uwnHUQco/ARWbuWKe4p2DCchh5tIxJ65OTxsMt8Rp3ibj2s7pJF
         7jLLt2NttPcY2nj1gOEiidcAnqdOT7Yny8Q+pmhEXKfGGssZ5a9cSfYso62Ks4mvlksA
         SQ85j7tRfoTh3JBLjZ7LDnQL9/lnIYuIyO52XfcgSoxgL8dgwBdFFmMrLcJDNC5Ahn6y
         vJxXovawRywQRFbh/1tWTRYFIWKqGK/wXPzGxf6GkjvCqLMCVMetklXGxJCOAxWVjcbF
         C5EplLhh0E/AOCztOdDs9iVYBM7t00CVEecOIrzeHJTNLDA0jT8tdKbHxJR4//uRXi7r
         dyUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=r81U/1gsVgsB45990q48ekrepQQIu/62JDObPdaYHPM=;
        b=AxQM9Pab9LU0ykAAkQ8fn31QGkG4XzE/yayZZXAECBNukmxzmePCqJsQ/3phpZFZm8
         NLelTOL6N9qu7pHjV7fAxBijO+87y9Hem1aun0QDZNKQYc/yqfts9KRSXoEVRj1JfnCK
         I8U4P7cG1CIFq/O+9/7nHA/I2o56MD+Ik/xyrw8qFj78LBPnmF+nCNchkq7MECmw9kEj
         dpJjg9sDoSS1IIfI+4BwiQprHXldEA/gWjXCUenXDQ8ayQb2B5dQ9s4AAPQjmIgcTkqG
         Mae5dLDRetzZATIV/McrtZ4F9bhqHPj5f13yEYws91mj0fUPnC3uwPBRjrTu7t0HcNZ/
         Ocmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=afSFEJnh;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc;
        bh=r81U/1gsVgsB45990q48ekrepQQIu/62JDObPdaYHPM=;
        b=UNyC9RHamgiE0z1rlosX3+NfP9Ojbhszw34DHh1w3F4UigkHTdkVwPQas3hQlriRTd
         t81o+ERYT9DYyMPlaW3inu3BKJNqTGV78GYR38QtFbICbvScNuorRhRTrGaA0UtlBqTz
         pj9ZBca4KA8Q4oHjvTeNg1AIBDEVpoY/6x1DHdkW020A5kK0KM7cKZOIpZ0y955CGABS
         etVVzfTOCL599D3otpchEIbmwsyyBTRxOzA+kcPnEDypCgy+EdL+LC1qY6LLlYqr16wt
         xmA6sxFn6QY9QhV1yi2jBCCTR/HMG/Heq075Wi6RF6ryhAeVxj1Wrg7s9xTWLAkTpfqm
         l5Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=r81U/1gsVgsB45990q48ekrepQQIu/62JDObPdaYHPM=;
        b=nPE0NmKFiqx8Q6fWrvM641+IaCjgOc72E3qodAaN08SL+9AbdP1IPUs4UMa6sYuRg/
         qzFaoeR/+9l5zo9ByRamwhmPmBLXAjdYfj2VPakzjfv2NbMdQMEh+U7RwiI3yG0HsMmS
         nBfuaaJEKtKgVfno1ii2V3tYT6/SqdtQOsCI3gsL6i4/J5/cl8oDX7KHwCOVS0aj/6fF
         yO+K1o4b8EMyURqBoGs2zfTHkp+tp3PMBydE1KsXC106xOWIH47h8CFDK8SEyCWSeYGA
         y3KiKPU0/5b+V+9XQOEwQj1rSKzaJqDOInCcET4qZLKp3LVDbjc3ccTpAFLiCX6yqWRH
         DSJw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo08CpBlHwXnhEcfrxMdVUhNPsvlBgiSaF9PFNkp2TbqUHf/Mj2l
	m0ZE4tMdI0URiIpc7ZOhT0g=
X-Google-Smtp-Source: AA6agR5bkIp5OxT+M9Xeae/yj3qf+xRhuZPrTyP3r1yK4kq2oKMQks2nHNxovF0GCL91am7pHvB/ww==
X-Received: by 2002:a05:620a:370d:b0:6b5:e3f0:8d with SMTP id de13-20020a05620a370d00b006b5e3f0008dmr2335020qkb.549.1659636086900;
        Thu, 04 Aug 2022 11:01:26 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e711:0:b0:6b5:e32f:fed2 with SMTP id m17-20020ae9e711000000b006b5e32ffed2ls1785848qka.1.-pod-prod-gmail;
 Thu, 04 Aug 2022 11:01:25 -0700 (PDT)
X-Received: by 2002:ae9:e901:0:b0:6b6:ad9:c9c1 with SMTP id x1-20020ae9e901000000b006b60ad9c9c1mr2289864qkf.313.1659636085709;
        Thu, 04 Aug 2022 11:01:25 -0700 (PDT)
Received: by 2002:a05:620a:4490:b0:6a6:a20e:6e27 with SMTP id af79cd13be357-6b8cf474f35ms85a;
        Wed, 3 Aug 2022 07:35:17 -0700 (PDT)
X-Received: by 2002:a05:6512:2248:b0:48a:f36a:2e63 with SMTP id i8-20020a056512224800b0048af36a2e63mr6326915lfu.485.1659537316237;
        Wed, 03 Aug 2022 07:35:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1659537316; cv=none;
        d=google.com; s=arc-20160816;
        b=vIX95G2u7N7j/Rj2yp6EPbRepbOen30lZFJdpkMZvxgGAiPlknmX1bKndcdd+uMD0N
         eg/PQRpyTEn8s0i9PfHQQlLerx7HH2lRp5KMwV2YXi/w/fEt/XbweWKtuO7gjUuIFvlj
         +R93HuuBOADIgZ9sjpJxpYBHTpfa6pJclvvTiLJJ+ck/FFIELlg9dxwgk7+aovQHyQai
         y30j7QfznRoXJB8XgripliJhXLW+2B5/HFYdV0+7PEMGnYcyYSclAe4VXWcChmLV9bJR
         sx0MtXyXdJ2Yv4XeHsRqnxQ8UJ7Dc3lVykDAtv4Xmcqm+6I+yoo5LTbbesOftkEqWclq
         nEYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=M7+RZKtF278+EdaA0PQShFrtb4hpzYOm1Lfqyn9YEAc=;
        b=dYIGEFIqlDpJLPvSbpsKfNawREBOxIUADWvQlcFhhT63OSW4NTViTj0M6iTrSXMAQF
         0XeBM6AjAczm7UwlLra2w8nVX1cl5fpxYMFQhUbUOowpSmw70+YzCI8T2TnFoZOjYdNb
         WOE88ygUJcO6XsdFqGzbAswiWZi/70RZags4JQr3N6ukr5N+UPvCtrSaE2Dee6nX+oGc
         1yA+rftfkjeUDhIap80r4oyNHOEfFlxEsaULFID7b8Imgzo8mUONAC4I3amTro7gO1Ra
         EA5DCU7Ujk+8ag6vrx5JM7onMmAeH3662/lGyJn8zhPqntgEDc/uN46jmpb3pltg48Be
         1RuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=afSFEJnh;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id i28-20020a2ea37c000000b0025e4f4e6637si467794ljn.2.2022.08.03.07.35.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Aug 2022 07:35:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="290903342"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; 
   d="scan'208";a="290903342"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2022 07:35:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; 
   d="scan'208";a="635701620"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 03 Aug 2022 07:35:10 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oJFSn-000HMb-1x;
	Wed, 03 Aug 2022 14:35:09 +0000
Date: Wed, 3 Aug 2022 22:34:32 +0800
From: kernel test robot <lkp@intel.com>
To: Li Jinlin <lijinlin3@huawei.com>, lduncan@suse.com, cleech@redhat.com,
	michael.christie@oracle.com, jejb@linux.ibm.com,
	martin.petersen@oracle.com, mark.mielke@gmail.com
Cc: kbuild-all@lists.01.org, open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
	linfeilong@huawei.com, liuzhiqiang26@huawei.com
Subject: Re: [PATCH] scsi: iscsi: iscsi_tcp: Fix null-ptr-deref while calling
 getpeername()
Message-ID: <202208032214.0FELL5gK-lkp@intel.com>
References: <20220802101939.3972556-1-lijinlin3@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220802101939.3972556-1-lijinlin3@huawei.com>
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=afSFEJnh;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20220803/202208032214.0FELL5gK-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/ccc367df3fdba07b24eeda721ca928cce50f40d2
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Li-Jinlin/scsi-iscsi-iscsi_tcp-Fix-null-ptr-deref-while-calling-getpeername/20220802-173945
        git checkout ccc367df3fdba07b24eeda721ca928cce50f40d2
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/scsi/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/scsi/iscsi_tcp.c: In function 'iscsi_sw_tcp_conn_get_param':
>> drivers/scsi/iscsi_tcp.c:798:26: warning: passing argument 1 of 'fget' makes integer from pointer without a cast [-Wint-conversion]
     798 |                 fget(sock->file);
         |                      ~~~~^~~~~~
         |                          |
         |                          struct file *
   In file included from drivers/scsi/iscsi_tcp.c:25:
   include/linux/file.h:48:39: note: expected 'unsigned int' but argument is of type 'struct file *'
      48 | extern struct file *fget(unsigned int fd);
         |                          ~~~~~~~~~~~~~^~
   drivers/scsi/iscsi_tcp.c: In function 'iscsi_sw_tcp_host_get_param':
   drivers/scsi/iscsi_tcp.c:852:26: warning: passing argument 1 of 'fget' makes integer from pointer without a cast [-Wint-conversion]
     852 |                 fget(sock->file);
         |                      ~~~~^~~~~~
         |                          |
         |                          struct file *
   In file included from drivers/scsi/iscsi_tcp.c:25:
   include/linux/file.h:48:39: note: expected 'unsigned int' but argument is of type 'struct file *'
      48 | extern struct file *fget(unsigned int fd);
         |                          ~~~~~~~~~~~~~^~


vim +/fget +798 drivers/scsi/iscsi_tcp.c

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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/202208032214.0FELL5gK-lkp%40intel.com.
