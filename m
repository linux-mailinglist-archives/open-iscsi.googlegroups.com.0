Return-Path: <open-iscsi+bncBC4LXIPCY4NRB64M3SRAMGQENJUBQ2A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCCA6F9683
	for <lists+open-iscsi@lfdr.de>; Sun,  7 May 2023 04:01:33 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id ffacd0b85a97d-3077e683b25sf1321685f8f.3
        for <lists+open-iscsi@lfdr.de>; Sat, 06 May 2023 19:01:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683424892; cv=pass;
        d=google.com; s=arc-20160816;
        b=EYxxQ2uFJ1xuQUx4saJCf7OfHzkIx8OOfo0Xg06slcKaT3H4YXldCHUWCHD8O+qQI2
         xVRjMkI4GG5AW6LJLLbpETiGip5lDfc5feVvo88E/rW3MgwxishsgtzFDue2UXGunOgg
         w9OLjZl9+ikflSdALekMmyGhELjGiwj/1LuDCw4ywjPj7Yi7XgfjSpgqmnrzYnEVqtya
         U13PDQIVR7gKpRZEZ/KKDySmFYunrBoRjFu3m/kN8g0/3e5uE0cDYdtMUJiVOmZhLEdk
         ic3Y2guhk9KPqP3k0lLQkPLEqWNmsrg+OjlCwXlseKGGLVNa2YPzpPP3gqUuiTZpQ9En
         dndQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=DBPj94wzu0f/vZcZs546TaA2D0wfsHGnUInoGcn4IOo=;
        b=OSF8kw5++PHr0KMxbdODgwnnC/Ztq3tcQXqb2Ce49zof7mBxdYcDtxDwPS6T117GUX
         fbdE/ZhRLLPsLaUxeXe3FEAnA/4eBEZ99EzU77v1ulVp5Yz2occR8UZlmrWbVWo01M2m
         gwdU3Am0swvBPe+rWE9vel2srfmHSIeAPZlbLSXt+gAiD182mBHGKxRg7BQ+FKJIMZB+
         CtEp3I4iaa3v8bXkjme+qIUbufmKfhkMdoCSxMJ0aSNQ4ldzagjcca2QxRohC8N0K0jY
         +wQm+ZiQlV/CxERLuVqIc5eSwyZNyM2R5pTfnFVDXy0FBBfpvuTjTrQH7INtK0b2b8/4
         pZMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=NYDXWLs3;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683424892; x=1686016892;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=DBPj94wzu0f/vZcZs546TaA2D0wfsHGnUInoGcn4IOo=;
        b=SUSf8aiQ1WH23vubncrRX2+AEYYmXcr61yo1V/YqVX40KXbz3EPRPes0/olIF9LLrz
         6BCmYLgR5uJo3kQBpmu26PBXfeUm/hPhF4kuJs1Kcznfa0tgH40EC6hKq3TT8CNpBxJt
         4ald0HoVeWmofoc5R4TVk/S5WwEOFrsHwvBOypRW4o9ES5ORqPt+Ml2sSOOjOkoeK2ga
         8JK9AV0+EqAbmJbUmtMhw5584CMpEypJ5adBzO/H7/htvANYy9vE4ZlItEYWCXI16aTV
         9rZHTGemVk3JNTajKMygXlhQb4PIx8XmBSV9/UEqE0H9df7EXqNzjUMmRv5POGiHgl35
         ooKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683424892; x=1686016892;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DBPj94wzu0f/vZcZs546TaA2D0wfsHGnUInoGcn4IOo=;
        b=MJCoqjPgComkSZcERrHtpTzlnaeXeZfv0e4Qa0UjXlcJL5rBsQCrjfMKvUv/95BUiU
         qoZKvMBir5rQtJbfPbhsCIUUSJaM50Jwkm2j3Ggo7rOeuD3QrW7SihRymEHqk02/Fo9b
         6NZ0rrhqTVKS5uGbPPHZW8SWNlREPMSRRhvSYFIBM9yYYTSV0AcViI8UQFoXXjnBSDib
         xeGXnac/J2Lxhp/U3g5iLSEUn+NcfAit/T/tG8DWXOjZujvYTYCe59votnPU6HFvzosG
         12tAcnl/Q2kzgLP8l0w6ByvrmTvX/ajOakeg6tRQqpdpmBJC9pljmHg+Qg32UQuckP3s
         wyLA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDzenGkL6PwndtSK03mV9PncSiURE3oC2UBL7e5X+3lIkbwB1+hJ
	sfKk7VGA1+0mc+9iBklN2Ek=
X-Google-Smtp-Source: ACHHUZ5ri1zCXautKpzFXuErxS0Ay+xWulTPUotVm+J7n9Ym8QzSewLgibXz9zIFRlLZ7ZPW/sm6xw==
X-Received: by 2002:adf:dccc:0:b0:307:7cea:bbdb with SMTP id x12-20020adfdccc000000b003077ceabbdbmr1065485wrm.5.1683424892644;
        Sat, 06 May 2023 19:01:32 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:5c0c:0:b0:2f4:1b04:ed8f with SMTP id cc12-20020a5d5c0c000000b002f41b04ed8fls5426685wrb.1.-pod-prod-gmail;
 Sat, 06 May 2023 19:01:30 -0700 (PDT)
X-Received: by 2002:a5d:4c49:0:b0:306:2c16:8361 with SMTP id n9-20020a5d4c49000000b003062c168361mr4486252wrt.22.1683424890180;
        Sat, 06 May 2023 19:01:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683424890; cv=none;
        d=google.com; s=arc-20160816;
        b=cFzHRJwJLZd0iRuBOioQhoCHOJuRL7eN5axDNDo/ptOq9MEvZbU0afafKOav7zj7gf
         0Jh5OH36zrF8gjz+CZxe5A1UF6B/NCVYDuz63C8FsONW7FpPnmb4IUS0xp6xj47pgmb/
         MtSnvWylnI+FOs1qhxS/ZaFyQ34nQlMXSQEtd38O3nISn5MlTWH56BVjBJVc5hTQ7koZ
         5Caqt69/V5KNuzIpKDYs5/N9aRhBL+tQ0kJYMzliIgUoQLRUxeqGQBpqcdFLjcIwRHjb
         Spph6dqZAKfQR/2EcZ8BqUw9woGoRS+iS1PigkMTgbQ1DFdpgT3lnFDYbQRmDjqATI29
         Y3Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SqbQCGJJYZ+i5zT483x2DTJNDRIiPP/bPrPmhdAiQTk=;
        b=K2wvPoM0tIzEaz4mpfi0XmxpgqULp3Ng8YiNU2M05R3xB5CorS/kEGQyVzDCPs64VT
         3XmfL02eBNLRlxqGOJLCvofPXmohC3XWaCIYWXAgQ7SWr4YSyx0fonb+iDs4Gg2FgusB
         vPfZ677v1OwB3k+nHg0fvnefEdD/t1zxxqoKBVPkMmub/j2v/51GbGH+ONO1NiU4mLWs
         dvFENUsA2G+4d3ovsYQIH+BfCkZejrR2bApbXBslodveuuodk5SulP7/XyMdSuk1YrMf
         QOSTRA/apqbhuQ1L/URSPQWG7uRWGofdQFysOkoRTKo7zjyue/WA+sf5XfrCXcgsIm+C
         enlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=NYDXWLs3;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id bx29-20020a5d5b1d000000b003062765f97esi331733wrb.6.2023.05.06.19.01.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 May 2023 19:01:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6600,9927,10702"; a="414991600"
X-IronPort-AV: E=Sophos;i="5.99,256,1677571200"; 
   d="scan'208";a="414991600"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 May 2023 19:01:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10702"; a="675620276"
X-IronPort-AV: E=Sophos;i="5.99,256,1677571200"; 
   d="scan'208";a="675620276"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 06 May 2023 19:01:26 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pvTiH-0000Z5-1Y;
	Sun, 07 May 2023 02:01:25 +0000
Date: Sun, 7 May 2023 10:01:20 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Leech <cleech@redhat.com>, Lee Duncan <lduncan@suse.com>,
	linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, Chris Leech <cleech@redhat.com>
Subject: Re: [PATCH 06/11] iscsi: set netns for tcp and iser hosts
Message-ID: <202305070951.jhFIquOM-lkp@intel.com>
References: <20230506232930.195451-7-cleech@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230506232930.195451-7-cleech@redhat.com>
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=NYDXWLs3;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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

Hi Chris,

kernel test robot noticed the following build warnings:

[auto build test WARNING on mkp-scsi/for-next]
[also build test WARNING on jejb-scsi/for-next horms-ipvs/master linus/master v6.3 next-20230505]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Chris-Leech/iscsi-create-per-net-iscsi-netlink-kernel-sockets/20230507-073308
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-next
patch link:    https://lore.kernel.org/r/20230506232930.195451-7-cleech%40redhat.com
patch subject: [PATCH 06/11] iscsi: set netns for tcp and iser hosts
config: i386-randconfig-a005 (https://download.01.org/0day-ci/archive/20230507/202305070951.jhFIquOM-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/a287abe6fb8da0c4af44c1d83fad9ca4fcb7184f
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Chris-Leech/iscsi-create-per-net-iscsi-netlink-kernel-sockets/20230507-073308
        git checkout a287abe6fb8da0c4af44c1d83fad9ca4fcb7184f
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 olddefconfig
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/scsi/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202305070951.jhFIquOM-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/scsi/scsi_transport_iscsi.c:234:1: warning: no previous prototype for '__iscsi_create_endpoint' [-Wmissing-prototypes]
     234 | __iscsi_create_endpoint(struct Scsi_Host *shost, int dd_size, struct net *net)
         | ^~~~~~~~~~~~~~~~~~~~~~~


vim +/__iscsi_create_endpoint +234 drivers/scsi/scsi_transport_iscsi.c

   232	
   233	struct iscsi_endpoint *
 > 234	__iscsi_create_endpoint(struct Scsi_Host *shost, int dd_size, struct net *net)
   235	{
   236		struct iscsi_endpoint *ep;
   237		int err, id;
   238	
   239		ep = kzalloc(sizeof(*ep) + dd_size, GFP_KERNEL);
   240		if (!ep)
   241			return NULL;
   242	
   243		mutex_lock(&iscsi_ep_idr_mutex);
   244	
   245		/*
   246		 * First endpoint id should be 1 to comply with user space
   247		 * applications (iscsid).
   248		 */
   249		id = idr_alloc(&iscsi_ep_idr, ep, 1, -1, GFP_NOIO);
   250		if (id < 0) {
   251			mutex_unlock(&iscsi_ep_idr_mutex);
   252			printk(KERN_ERR "Could not allocate endpoint ID. Error %d.\n",
   253			       id);
   254			goto free_ep;
   255		}
   256		mutex_unlock(&iscsi_ep_idr_mutex);
   257	
   258		ep->id = id;
   259		ep->dev.class = &iscsi_endpoint_class;
   260		if (shost)
   261			ep->dev.parent = &shost->shost_gendev;
   262		if (net)
   263			ep->netns = net;
   264		dev_set_name(&ep->dev, "ep-%d", id);
   265		err = device_register(&ep->dev);
   266	        if (err)
   267			goto put_dev;
   268	
   269		err = sysfs_create_group(&ep->dev.kobj, &iscsi_endpoint_group);
   270		if (err)
   271			goto unregister_dev;
   272	
   273		if (dd_size)
   274			ep->dd_data = &ep[1];
   275		return ep;
   276	
   277	unregister_dev:
   278		device_unregister(&ep->dev);
   279		return NULL;
   280	
   281	put_dev:
   282		mutex_lock(&iscsi_ep_idr_mutex);
   283		idr_remove(&iscsi_ep_idr, id);
   284		mutex_unlock(&iscsi_ep_idr_mutex);
   285		put_device(&ep->dev);
   286		return NULL;
   287	free_ep:
   288		kfree(ep);
   289		return NULL;
   290	}
   291	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/202305070951.jhFIquOM-lkp%40intel.com.
