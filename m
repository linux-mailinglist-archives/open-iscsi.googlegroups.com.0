Return-Path: <open-iscsi+bncBC4LXIPCY4NRBOH63ORAMGQEFTLFZEA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 950146F9671
	for <lists+open-iscsi@lfdr.de>; Sun,  7 May 2023 03:30:34 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id 2adb3069b0e04-4ef455ba989sf1736706e87.0
        for <lists+open-iscsi@lfdr.de>; Sat, 06 May 2023 18:30:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683423034; cv=pass;
        d=google.com; s=arc-20160816;
        b=kaSdDbby5W36wf9tt08UCi9f6VjVIG85pIxwLq57f7Ref4wmaO55zDHl4XR+ycUzY9
         JS01Vn3cTI8Xd+daZdTGHv8Zdy9ekX1cj664InRxhhBa4vGQN2HmZq4SmpoifS32R072
         cLEZSK/CFWX0xnJwWIcWQ8kP5jQtM/nR+255zHpyPU2MTPQ1z05keHygVdkyCGApdOH3
         1Oh9vryj615DxYGyOL33Gakl+f/8bTv8OS/OnB8Gpq41EyAqEnYm3s2HRLPYKEcwRnFP
         KKO54VwLGJiV8Di7UFdymKmk3reNXpzOiDOIWVkx68htfao8+Ox9p8EwbSY4ccR5dOD5
         vlFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=jmZZaCKJYFou1iXQzJO6tHl+SoaKe5HqifTSyCQK+tQ=;
        b=rlYn90aIScvyUFzWaOi3N0AEiO7BkaKkaFSep82Ubkcy+3GVxnkCIwzEk7N7fcJG7+
         zWnE+LjiGiOIG0U9gFpF/sjxvTGqLVogRC3tKvsLMPx6hoLNI95cGNWf4laa3hjls2Aj
         UqHCiP/huPVUFAsR3ZoyFZyukrAFinDDjM2nVsJvS8v2tVvbF9chlW7P40JKiKmObvu8
         3a0ncqzfSYPqsP7KZC7NEwpf/+XUKMxb8w448pxKedVeT0gwsLoWJ5Jo4ydRLBbnTlfQ
         M6HCSta/lUfqOmMx0MT8mUMGHl/jeazIDbUXbPA7sZP8RPZAgV94bGaev/Zv55W5lrZd
         JeGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=E6ZGrpAE;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683423034; x=1686015034;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=jmZZaCKJYFou1iXQzJO6tHl+SoaKe5HqifTSyCQK+tQ=;
        b=IKaGPg1y6RoIrTU3O+wxkuAYzdImGwnKx700yQLJbaNNM2fatd1s3lp1PN58KAlzdu
         SPyNmap+dcrqj339pm0CHA5DYGZAYzMqz+xQ5qNEHpgbz4e8f9SRUx95vTswiM++m1et
         eiKrhcWhPjVuciH03+vVzz33OipgvcVI1HCgkO0pFnoURxoVsvGsVK79QQbFmnujjTgq
         6hVRbOel6kijwPrwQPRU6W3QCPmJjLO7X1j334vKGaYd6vSxltOzqZk0rGMjvkHnW+cr
         yXnrI7KL2LzcESuWJowh1gjl0KFNihq6wGGXY/0ALW35zp0+fI8DJzJk2xvutZTN++Do
         hE5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683423034; x=1686015034;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jmZZaCKJYFou1iXQzJO6tHl+SoaKe5HqifTSyCQK+tQ=;
        b=Dp/nIdixfDJJ7yzxGESt7Y6kpYmvHY8AfzehBDJCU/yud59tprgD/PAcN0zxvVJX1X
         p12QbyJVwidBUJ/4baPc9sbq2koPo8qygMpc9Q1tIYFjr2Elv+O3BEyeTugWKV2UFLzl
         2zJqlkpe1R2Lb6RmEF2xnzbZ6WbzwJAxr4m1E1VCG4lQmw7d6diNfm9W6/xNIcL1zFzc
         iCyP/I9F9GPLIO78fZox2824w8H9oEhx5RzTGjnIKFTAlI27gqrlKiqTrKS6IeN01B/R
         pERzoyJPO1J9W74Du5EU2b3nHhh5vzNcB5cSxJPB1o8gKpP7+xqLoBINE8zI6bIEUYpZ
         pmPg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDxs2cD4d4RNMZtrh2vWXVhpB4QZk+209UN1gOyB/ChRRf6RU0Fp
	KFxRg5c3RC2dl5CrXEIgq98=
X-Google-Smtp-Source: ACHHUZ7alnQ8QZFf6BdaqKBSFCQDnK4+Sy6nHjrWB4M7je8nAuUDThPQQdI+NQd5bp9hATovegPNYA==
X-Received: by 2002:ac2:43b8:0:b0:4f0:b01:94d2 with SMTP id t24-20020ac243b8000000b004f00b0194d2mr1452582lfl.4.1683423033774;
        Sat, 06 May 2023 18:30:33 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:8913:0:b0:2ac:6805:ece7 with SMTP id d19-20020a2e8913000000b002ac6805ece7ls2595559lji.6.-pod-prod-gmail;
 Sat, 06 May 2023 18:30:30 -0700 (PDT)
X-Received: by 2002:a05:651c:2318:b0:2ad:80a0:9391 with SMTP id bi24-20020a05651c231800b002ad80a09391mr349635ljb.23.1683423030856;
        Sat, 06 May 2023 18:30:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683423030; cv=none;
        d=google.com; s=arc-20160816;
        b=QSfWDLF1Pvu4dG4jYIDw4ucKvrivQ/UBmBwhc+qpHA0Do6W3Sj6OSHmdmuk28nVWpz
         QfKGUYnPocJm8kTT6Y67k1YjJ6HtTfI2fEeQvXcX/euZ4lSmfAEYxLQtAgnNU849m9RT
         B9FdfIjY5ikgI/TCAx1SdsqaCEpHozOSYUIG4qRu62jJiJF0OldHXtjVkYe8Kuw3hLuc
         /v/OPzS3z2nfvYU0ZUYgMg4CG97H6QFinyNikQlAkdIqeOFOMK6G3tijByVFv+8cC0Jv
         tuLJ2SYrpyRGIOOMsN/VT3Nq2YvLmewkzBEWXQutBS1x7kYuO3LWsdc3U8TZrHmpd7sf
         opPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=X7Dyo35sqNNBMKqvBmyaSEUH02FbtneJfcqsq7RHGrE=;
        b=005S6kAfvsvOOg1q6vjueziGkUafaxHFmxHAC1FeOlkOxwYREeALUBLMIpO/COr2ap
         R9VGqQXCaua++nkHkSwlTH/98HlI4dbhpwoG1dKYXtL4BPYqAn4NB9Aq0iKFJI1qYwn8
         91R0povF3ADBQA7FeBQaOSa8OyvxFYoQEStwkZ2AKwrm2q1zzPLgKR1kLWKldcUDO3g8
         OcEN9dQaFeZ3kNtV42fQtD2nxAGM5nfSGt4oeBBILWykJMIrVilT7VVmFFBVM0qtmsLs
         n0ARPIAkS0/0C6DslpkVpzFcTmqpK7drFHtSQcqVEwsENYMYblmF0V30EEwjJMa9YzUq
         juqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=E6ZGrpAE;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id u15-20020a05651c130f00b002a8ba7c9a04si225683lja.7.2023.05.06.18.30.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 May 2023 18:30:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6600,9927,10702"; a="348259147"
X-IronPort-AV: E=Sophos;i="5.99,256,1677571200"; 
   d="scan'208";a="348259147"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 May 2023 18:30:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10702"; a="728606711"
X-IronPort-AV: E=Sophos;i="5.99,256,1677571200"; 
   d="scan'208";a="728606711"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 06 May 2023 18:30:25 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pvTEH-0000YJ-09;
	Sun, 07 May 2023 01:30:25 +0000
Date: Sun, 7 May 2023 09:29:51 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Leech <cleech@redhat.com>, Lee Duncan <lduncan@suse.com>,
	linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	Chris Leech <cleech@redhat.com>
Subject: Re: [PATCH 06/11] iscsi: set netns for tcp and iser hosts
Message-ID: <202305070938.QRjcW4tq-lkp@intel.com>
References: <20230506232930.195451-7-cleech@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230506232930.195451-7-cleech@redhat.com>
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=E6ZGrpAE;       spf=pass
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
config: powerpc-randconfig-r016-20230507 (https://download.01.org/0day-ci/archive/20230507/202305070938.QRjcW4tq-lkp@intel.com/config)
compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project b0fb98227c90adf2536c9ad644a74d5e92961111)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/a287abe6fb8da0c4af44c1d83fad9ca4fcb7184f
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Chris-Leech/iscsi-create-per-net-iscsi-netlink-kernel-sockets/20230507-073308
        git checkout a287abe6fb8da0c4af44c1d83fad9ca4fcb7184f
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=powerpc olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=powerpc SHELL=/bin/bash drivers/scsi/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202305070938.QRjcW4tq-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/scsi/scsi_transport_iscsi.c:234:1: warning: no previous prototype for function '__iscsi_create_endpoint' [-Wmissing-prototypes]
   __iscsi_create_endpoint(struct Scsi_Host *shost, int dd_size, struct net *net)
   ^
   drivers/scsi/scsi_transport_iscsi.c:233:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct iscsi_endpoint *
   ^
   static 
   1 warning generated.


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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/202305070938.QRjcW4tq-lkp%40intel.com.
