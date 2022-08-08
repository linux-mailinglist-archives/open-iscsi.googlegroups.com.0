Return-Path: <open-iscsi+bncBC4LXIPCY4NRBUUEYKLQMGQE5YQQDRY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B73058C206
	for <lists+open-iscsi@lfdr.de>; Mon,  8 Aug 2022 05:26:12 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id c20-20020adfa314000000b0021f1757ea8asf1196306wrb.2
        for <lists+open-iscsi@lfdr.de>; Sun, 07 Aug 2022 20:26:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1659929172; cv=pass;
        d=google.com; s=arc-20160816;
        b=PHxHZIi1436nN0kjWX3kKXBCAaFQgr3XOX7aJWZmw7zAjcKBbEOALTsx4BVOegoa5y
         Y8UIIR/WfyoEqvDPr1ySSBWznmDWIDSmS+SAVLH9qvI3FRxPDvZSkbVz/lGlu/ZfUG34
         YTHbaWr/9kjhpPy574sVoF/DacX0vuPKMgw0FjLlGUdhYkGpLEPmdgzR+JhRPoPZS67Q
         tQNA11FE6slqeK0Mld6s+msLJaghxgH2Astko5IKR+9Rc/shYT6F40pIuzxJCs01YnBs
         7gvDjutyx/9dHL06Sw5aZka8nK5/QwxoGfpjrlf6qIOLPqo2vSmcLxaGO5OZmzwb6zxJ
         mVig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=jQaeDKttOo/maXvQ9Pq2Fq+cw++P3I1c+kYKa/FVLck=;
        b=k3UA6J5R7Ixi71LW8+7t/317Oltyp2xuOwt8sLc5aSBTHiEXm/3ZyzcLw+yZNBWa6E
         ZBIi2y9QJpUPAUchRHd7gbQi6RIDT0DQ/daGJ7El6So6riwd2SLMOjAECiWeYmW+eYbb
         8M1AjwJuStmubpa5STPoz+QQTpXcE3GvLJLDVIKbxhG6MuHz+wJ9/45HaoSm6zUlCO2w
         SaD5Wlx3wcCX3Bmyp8U7OflI1HRM5TaJOT174DU6UhwrtDaLr1pcppb/GMkteGGr1uq/
         2lLt+u4GhYbLRXb2TOPcANZjyvoJgL4fbohCULuaqCQfV/mOoNRipW1UR1tv21ul9LGH
         xv0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=gAfdxQV3;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc;
        bh=jQaeDKttOo/maXvQ9Pq2Fq+cw++P3I1c+kYKa/FVLck=;
        b=C2q7l2uwgVjPlrzJGHSYjFq7u4M41pwS/8hyc2Lxpb7NIdxSayoiDgZKFDJdTFErIs
         E21t6NSssftZOZNOrEKsTmw9PN+Q26eRlb85UzCsv/hA2UMe4WqPpBsSVwVQOAjjmMeG
         8Sf8RRh4ZWcp/gYDma8RQvSaCfWEfsxnOSNkZ9jcB9MIQdcSZ5YlE0XPID4GPfaPkdMf
         T/phww9BUCJVRkzdDsPCoE9OaRXkoeELZgAZ5UoLYBZRFDZYqkx6HmHg1fwfmwojfH2e
         Rpk/WcC46IjkeU3rWxqT/z+ZuCQgBSEKy3jPchk2+stinUpPc3dKZkYaCTS3bFvEuKXb
         nIzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=jQaeDKttOo/maXvQ9Pq2Fq+cw++P3I1c+kYKa/FVLck=;
        b=BAsv5MD6KMQ6dLIeQRvKmVHL7A7R4jOKBek+CUJfRvfmBehnfL75dl9fPpuhYRcib2
         Ei1UT3I8BVeGmLEovotmkwpcE6wSiFDEX5+M/9LubetJkRAGZeGEZXW/eDM23aD3bmXr
         kRN09kfgCITTm93aLAQCfVTjtWRCzIiHduaMTqlOLUZBPI3FwLS6dCiZrq6GTbgwVbOm
         E24xFuXLaqYJ1D4mvGrJoZHUZj3RdPPlHqmIM1/T8G9WDDdBo/QLKg7OlapFJEuEZt6D
         /TXkNh2qP0GQP3X23tuXoIZcFE4N/UKVjKnxVXFP/LH+Z0TC61suCt3sDTQTpAgRKf9a
         WAFw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo2gNRQFxwstdqU8oTGlevH3ikJ7fOpxApHM2qN8g9VJStK7Un93
	CC04Gkx+++e+ExkyFYzxqyQ=
X-Google-Smtp-Source: AA6agR5B+NNE6n+y8eORXAEbgwxNEEo/eGL9nA8UlBSD2K9/MCrnxBsZMBYp6HobDFBlJpjoipJATg==
X-Received: by 2002:a05:6000:1883:b0:205:c0cb:33c6 with SMTP id a3-20020a056000188300b00205c0cb33c6mr10836106wri.39.1659929171965;
        Sun, 07 Aug 2022 20:26:11 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:f004:0:b0:3a5:22da:8671 with SMTP id a4-20020a1cf004000000b003a522da8671ls1899167wmb.1.-pod-control-gmail;
 Sun, 07 Aug 2022 20:26:09 -0700 (PDT)
X-Received: by 2002:a05:600c:3510:b0:3a3:34e7:cfc8 with SMTP id h16-20020a05600c351000b003a334e7cfc8mr16747215wmq.164.1659929169215;
        Sun, 07 Aug 2022 20:26:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1659929169; cv=none;
        d=google.com; s=arc-20160816;
        b=Vba6aE7PBAD0zucDTEKqPFzalOnWOu5XF9NcJpHa8btn2WwYnS0KcQdy62GgWqOtqP
         0pT9ASctu998RaXCARu9Elo5u0cDll7PzHIjFQp+FPXg/vUyifAn/m0X0gT3M8dErbsf
         9QYpouUOkKzCETZi06zrOkas1j3d7FCO4aI9Z2rRn0W1Lo43Kb0B0FzB+03Fl55lTnav
         tVsXAiMUNXj+kx2DEWh7OoYyuREBszIufr8lcmaLxl/YZm48U46WTKaLqx2ioUA2MzxL
         ltvUZPu4nRUQ3Tfozdw+rFc8mJfKYDle4uRLUQatTWOeUbnyNbJvOd6jJ0xrqwsvW0xU
         HMOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ysYeiuVBCg1vZEk67ruAY7agbt2P3RaraSGMhJBizXQ=;
        b=DpVkvW17BS49UsuQb/+O2226gmekkeIUvAFKycWovefiGrkrAqoWBkJvwtCf+garLD
         nu+yAdkfonuCbCCg0BxoVkpe3BWZ6Tw2pODFBaeqqOJcigZs4xshXBXh2H31yUZZ3hYC
         GSLswT6xITCKVhcYeoVbRHTRcNGiRdno/nods4JfbXi4iv5AJiXP2erEv2mqaP2t43Xb
         Kg0Njg4sNxwJ16/tKjQ6zNLyQVkGdCzl9qnzrrngjn1hYvNEh8HWnuKcRVR1BJK9ecpb
         WNuR9uA9vlPOIas00ivRv5+i/nLaaJF3XGwp9os2fjS+SyhAtq7EVHnJZpzwkJphVYtf
         rLNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=gAfdxQV3;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id k186-20020a1ca1c3000000b003a51215aaf3si306060wme.3.2022.08.07.20.26.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Aug 2022 20:26:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6400,9594,10432"; a="289250415"
X-IronPort-AV: E=Sophos;i="5.93,221,1654585200"; 
   d="scan'208";a="289250415"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Aug 2022 20:26:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,221,1654585200"; 
   d="scan'208";a="931870261"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 07 Aug 2022 20:26:04 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oKtP1-000Lqj-1H;
	Mon, 08 Aug 2022 03:26:03 +0000
Date: Mon, 8 Aug 2022 11:25:23 +0800
From: kernel test robot <lkp@intel.com>
To: Li Jinlin <lijinlin3@huawei.com>, lduncan@suse.com, cleech@redhat.com,
	michael.christie@oracle.com, jejb@linux.ibm.com,
	martin.petersen@oracle.com, mark.mielke@gmail.com
Cc: kbuild-all@lists.01.org, open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
	linfeilong@huawei.com, liuzhiqiang26@huawei.com
Subject: Re: [PATCH] scsi: iscsi: iscsi_tcp: Fix null-ptr-deref while calling
 getpeername()
Message-ID: <202208081109.mO6WgY4E-lkp@intel.com>
References: <20220802101939.3972556-1-lijinlin3@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220802101939.3972556-1-lijinlin3@huawei.com>
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=gAfdxQV3;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
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
[also build test WARNING on jejb-scsi/for-next linus/master v5.19]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Li-Jinlin/scsi-iscsi-iscsi_tcp-Fix-null-ptr-deref-while-calling-getpeername/20220802-173945
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-next
config: powerpc-randconfig-s051-20220801 (https://download.01.org/0day-ci/archive/20220808/202208081109.mO6WgY4E-lkp@intel.com/config)
compiler: powerpc-linux-gcc (GCC) 12.1.0
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
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' O=build_dir ARCH=powerpc SHELL=/bin/bash drivers/scsi/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

sparse warnings: (new ones prefixed by >>)
>> drivers/scsi/iscsi_tcp.c:798:26: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected unsigned int fd @@     got struct file *file @@
   drivers/scsi/iscsi_tcp.c:798:26: sparse:     expected unsigned int fd
   drivers/scsi/iscsi_tcp.c:798:26: sparse:     got struct file *file
   drivers/scsi/iscsi_tcp.c:852:26: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected unsigned int fd @@     got struct file *file @@
   drivers/scsi/iscsi_tcp.c:852:26: sparse:     expected unsigned int fd
   drivers/scsi/iscsi_tcp.c:852:26: sparse:     got struct file *file

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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/202208081109.mO6WgY4E-lkp%40intel.com.
