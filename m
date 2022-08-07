Return-Path: <open-iscsi+bncBC4LXIPCY4NRBCOXX6LQMGQEDLANMLI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D5A58BBDE
	for <lists+open-iscsi@lfdr.de>; Sun,  7 Aug 2022 18:42:53 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id p36-20020a05651213a400b004779d806c13sf1493390lfa.10
        for <lists+open-iscsi@lfdr.de>; Sun, 07 Aug 2022 09:42:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1659890572; cv=pass;
        d=google.com; s=arc-20160816;
        b=qAlnK6+K28ES43frtMWa+WdSP0+2hHkU05VuoebQBCkMfv5EwHbRGeZC0SAzrSE/9T
         t9VWw/eFQzpjHqGoFiIF04v8A6YJYtwHBP/ce7Zch/hTe0aePy4jOhyF8pJ3+f7Ep2T7
         UozDGskFR4E2V1fQuyMSNaoupBr0C1Fyxmf6VXkmefqTUJlHsuQjN0ia745fW5ii63lq
         3L5hHx+LPBBJ8v2Kio6AKuiF1OmArhZ4HdKdNNVVo+CQsBM/y4RbN9WOsksFt8h3LsHQ
         w1iyNi+f2F+9vIQNj3SzQJH7ayHHHvYZ+JRomSW3AKOSouDzyUHAVv0HYyqqz+Gy6UE6
         KvAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ckfylrwT+2KG14AfseLsDn5uNmGwi1y6IVug7guqfgE=;
        b=l/8U1OVMsjuBH2xGGYYzNqashKPU24orIw5bjJuO1vsWuB/r/O+qka0/CMMtdlKmCK
         Qn0r+rGjIPHurJT4oIuNudSShBaEzrIi7RXrSLLfIz24Eq1gd0cPsN7+tgIr8NsBx46g
         z+IqRh4I9cj2dH6ouFc5gVn53bNET0iEmaKera5Ql4iWt4TMC2Ums+eYP+OncYQLUxzu
         dvE8KitYrHxKWZ4lr7E2D1rXN9n3rFAXzpjlpeiOk9nqXLosyuikaUyg0/VJHVhbQnXJ
         LTIXR/lLdkKw5vjdtJY2keIQ7og092ReuLhh8KzEcIcnicnJnBjNV1Wc6V7Hmzsj1e9t
         8XMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=csnCdYqh;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc;
        bh=ckfylrwT+2KG14AfseLsDn5uNmGwi1y6IVug7guqfgE=;
        b=HXpw3Iwolyd2qcYHcMdLH1ylwCagnsgSfhtqJWu9iem6u2ogtOmhB0HhS7N5Ku8SBK
         vfK61KotwS208SwWWGK7qs/RpJMhq6ASS2P3oCaMIZ5lmhNoCJ21jTROmzFXz7V5dv1G
         sgiSPoUNJL1Lka7AxDKUePPKDKmTB6dqjOb++O89v0YwsYwpco24MFNhquFHMiTv5lhy
         2YA4irbVvGaE6IWytZZf0ZkaSxiWhIR+8TCxBrm/68m72gg0Y9fipXCHA0RcgMa0VHT2
         AVzTWndzDHVODS+rZdaclISLAFABK9syNF0HWiQ85eXNqnkqaB9qukBPC8xc5XC3MqyI
         R5/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=ckfylrwT+2KG14AfseLsDn5uNmGwi1y6IVug7guqfgE=;
        b=Z1iOKuHHbNyI6gCWKNoeNtbdnHmbRxCHSlV1SFoxFLLcD5JkCM03zrbTgt8VAkgHm+
         XkkSahYkKkIAumb7V5ISGT+N8sSlNVBFsrKWymfyFaemnM0+RWr/6GftHQx0uDBaDchA
         2GXz5beoIf5QRtHEZNNfSzhfFtYT27pus9VSCcpGQJT5fu8smw67c8XrGdDwfEDwv5xm
         Ptw3b6T1lyM2dcM5+86T1kZzoFJ0QmdmHWlRamrMhePk9oTebKdZuuVsp5LPjtHQftsU
         kifzv3VF19usj0A/cSpL7hbHdhhgIvhPYvi78KKh9SWJNeVU2XRCfZuLcXMM9wGXtkG6
         7sZA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo1Re+kKcJppElTsoOjiju0DfrYhj0Cx0t85J1UNjrQA/1Ilqopy
	vdvHCKKAwGsMl/a2hqc3D3w=
X-Google-Smtp-Source: AA6agR45WivXNUrsz5Vhwd0HB8ohj9Nd+1+ttl8vgHVBLsmFmkwQBVcVXsttWLvzuRc+10PHLpmPGQ==
X-Received: by 2002:a05:651c:1544:b0:25f:5036:ece2 with SMTP id y4-20020a05651c154400b0025f5036ece2mr1417782ljp.73.1659890572338;
        Sun, 07 Aug 2022 09:42:52 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:a48f:0:b0:25e:64d8:e097 with SMTP id h15-20020a2ea48f000000b0025e64d8e097ls1392119lji.9.-pod-prod-gmail;
 Sun, 07 Aug 2022 09:42:49 -0700 (PDT)
X-Received: by 2002:a05:651c:12c1:b0:25e:3111:419f with SMTP id 1-20020a05651c12c100b0025e3111419fmr4756068lje.320.1659890568942;
        Sun, 07 Aug 2022 09:42:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1659890568; cv=none;
        d=google.com; s=arc-20160816;
        b=ej2G3qo5YCGbbHsvs5cNJl9NnItK6RpI6eTDt2TO0uE5qiuAHp5KeR663xo4aJxGRU
         N+BNcKnRaJaSgcZ0l9pajV+hxWjg8KjB1pzjJFXoPWMISqaXYnWNZCFy1fV2ngGKZG0Z
         UAUc23XWrnLnkjvZO2ucCxsssIwj16CA0Q1qzRp0OZSQoXG/skrksRnyoybsOYwsQDYD
         C8pjP01WPHk6LnjPl9TiCNdG2M3aV9/7Xngi881bAuC3WsgD6zyzMIuarLQUfOf/yUCG
         u2+0TKIVRpYnW9gC+41G1Id97PBS9aZH4ELR2a1apP3JMgkQ9NBzSKRh0NynXjrBYBpB
         H32A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2IwuDNqpUe9K5WvUpnu8nxLy9PkkqoFH01kilyg1nfI=;
        b=XQI+uzlF8UD8zacb0Eun56pOF8AaRb3OG+Ju4nOJjRgtIhxl3JzV0NNACHmbfY/iYx
         4dC/OfTM/KOOEyMlgomeKPxYF95s9S0Cr5GyqEy5VBETjMZwwjdZapW4rKghN7xDJ4cY
         N7t3yTxLh20Jnp45T8PXOTBBQUO5U7laQptbMOPBsXwSv7cQMxcwT5hi3iWQlyCumUKt
         1JCTlsfikX5208C+f7gh+D0H7u/XMKTWWP05+ISUOKLLKU5wvyBxsC6FKFWYuo/WIvLT
         xH/b/8By8iu3shB6UeuS/TQMXrBICEg4bZXeY6EqG2ebKjObKquVJGUK0X7xEjKSswdi
         s8SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=csnCdYqh;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id bd1-20020a05651c168100b0025e71e3844csi372011ljb.4.2022.08.07.09.42.47
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Aug 2022 09:42:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-IronPort-AV: E=McAfee;i="6400,9594,10432"; a="376743943"
X-IronPort-AV: E=Sophos;i="5.93,220,1654585200"; 
   d="scan'208";a="376743943"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Aug 2022 09:42:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,220,1654585200"; 
   d="scan'208";a="693502765"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 07 Aug 2022 09:42:42 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oKjMP-000LTb-2U;
	Sun, 07 Aug 2022 16:42:41 +0000
Date: Mon, 8 Aug 2022 00:41:58 +0800
From: kernel test robot <lkp@intel.com>
To: Li Jinlin <lijinlin3@huawei.com>, lduncan@suse.com, cleech@redhat.com,
	michael.christie@oracle.com, jejb@linux.ibm.com,
	martin.petersen@oracle.com, mark.mielke@gmail.com
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org, linfeilong@huawei.com,
	liuzhiqiang26@huawei.com
Subject: Re: [PATCH] scsi: iscsi: iscsi_tcp: Fix null-ptr-deref while calling
 getpeername()
Message-ID: <202208080020.xQk6IIBw-lkp@intel.com>
References: <20220802101939.3972556-1-lijinlin3@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220802101939.3972556-1-lijinlin3@huawei.com>
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=csnCdYqh;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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

Thank you for the patch! Yet something to improve:

[auto build test ERROR on mkp-scsi/for-next]
[also build test ERROR on jejb-scsi/for-next linus/master v5.19 next-20220805]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Li-Jinlin/scsi-iscsi-iscsi_tcp-Fix-null-ptr-deref-while-calling-getpeername/20220802-173945
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-next
config: x86_64-randconfig-r033-20220801 (https://download.01.org/0day-ci/archive/20220808/202208080020.xQk6IIBw-lkp@intel.com/config)
compiler: clang version 16.0.0 (https://github.com/llvm/llvm-project 52cd00cabf479aa7eb6dbb063b7ba41ea57bce9e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/ccc367df3fdba07b24eeda721ca928cce50f40d2
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Li-Jinlin/scsi-iscsi-iscsi_tcp-Fix-null-ptr-deref-while-calling-getpeername/20220802-173945
        git checkout ccc367df3fdba07b24eeda721ca928cce50f40d2
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/scsi/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/scsi/iscsi_tcp.c:798:8: error: incompatible pointer to integer conversion passing 'struct file *' to parameter of type 'unsigned int' [-Wint-conversion]
                   fget(sock->file);
                        ^~~~~~~~~~
   include/linux/file.h:48:39: note: passing argument to parameter 'fd' here
   extern struct file *fget(unsigned int fd);
                                         ^
   drivers/scsi/iscsi_tcp.c:852:8: error: incompatible pointer to integer conversion passing 'struct file *' to parameter of type 'unsigned int' [-Wint-conversion]
                   fget(sock->file);
                        ^~~~~~~~~~
   include/linux/file.h:48:39: note: passing argument to parameter 'fd' here
   extern struct file *fget(unsigned int fd);
                                         ^
   2 errors generated.


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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/202208080020.xQk6IIBw-lkp%40intel.com.
