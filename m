Return-Path: <open-iscsi+bncBC4LXIPCY4NRBQUVVK4AMGQEB27WXQQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0062899B59E
	for <lists+open-iscsi@lfdr.de>; Sat, 12 Oct 2024 16:42:13 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id 6a1803df08f44-6cbe3ff272bsf55345916d6.3
        for <lists+open-iscsi@lfdr.de>; Sat, 12 Oct 2024 07:42:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1728744133; cv=pass;
        d=google.com; s=arc-20240605;
        b=NpSGMB7tDO9qM4PHZ8bI8twZNXrUbtpxjCvxn9VhtPqw2xOg+wJJ22YF19chOwPMhF
         sj+7h4N4f1RH5ZJD21vlFv7kQvcAG9aZKSMe5fCTF5GbHGI9gzka4W53HsmcbhNRWbxc
         W/ZJSRn0mPkxwUtnwcp4OsB1aqFJf9SFd/WAUfmFNIZ6DXbu3b9SVYaN7EkY9znToX9b
         mYgJ0w3DUU8KaxQOdGt5IAs97mXTjGCIGMrpZUxdtwMKPsC8uSKJyNBlyPFc+uMQV0rj
         oO7RYpNRkhMXHGKamv10l4ljOKRTr2updmOEZhcOCdrRm26MRqfIkYyZ9U0qZoOg10zn
         xmaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6zEROR2KgHXxUdvn8Q65O67H7W3oS++JJQNqykWRq7A=;
        fh=Bw2ABK8jejBC2S2+L6nWcg8Cb8NZjzBLKI5v78kwvmE=;
        b=jT/QL6nM/q5CKy6KcRfOrsuG+NXHOcsYTrz3bgClLq1hx+6IeYEDu0qWb6DGc+owh0
         HzN6mEIdttKEk1Sdk5nhZK0LJyDoHqGs7O+OPXrXqKKElXqunRBufncgX1HedzCE9/Gd
         qu7+Ncaj1cSA1kGURtDsqfherz5Wa7PoTym4aKBmhO+vWAz/UDI9Hyqsd1U/o4MG7IVq
         p7DVX/HNOF1nZvWIiqC2IgOC9MP5zpZusKge1EUgezS1rGM0SJT8KhVMmARiEMv8oUv4
         +UIWBjc+5J/t6+q+8hHsdKfWnFqpzyqF5sfwPjUBy2yoM75+77xncVBphy7aLYptv3gy
         JsTg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=FuqqTuW7;
       spf=pass (google.com: domain of lkp@intel.com designates 198.175.65.11 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1728744133; x=1729348933; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6zEROR2KgHXxUdvn8Q65O67H7W3oS++JJQNqykWRq7A=;
        b=oSe9Gw2ob2wQWA22YH7UkaVHiZ9/Q0vK7AO9GRl8DFgEx4LfCq2jK7ErtkH143Nl9Y
         O3Vjc6JHmP5PmgaJuU9ccWib6FhJuGdiF3N7dA+sB+HEvNHqUehiWdhRhxUrYR6A+eUU
         y+jreDZyCo/CS/xNEn6pmKIRH6eWuks6N6c6SK42a7ur5G0B8EYfraMGM3UgLDsRvjMb
         V2zKxJSA1UDAiz5UUZ3je5NS3O2hdBo51rtSpdKDSJiOqA55fqkUWjbIdLhwc+SDWsT8
         5Tgyxxw3ZVb2A/X8zmHNxtMrZnumXwlqQOSm0amrBzTgn4IptBb7yDn6Sn4e9shP4tUS
         ry1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728744133; x=1729348933;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6zEROR2KgHXxUdvn8Q65O67H7W3oS++JJQNqykWRq7A=;
        b=Ajpd4ybAiv0pA0/tDB7CzarKct1/oG5YLOckdl0qcXjWJZHf3MTQGiFMe68kJSsy72
         +xlaSDiX8IVgSvEYLNkWeETEzBw0FL1wnO8izuYofX6FdtEge4+Rnohn2NyjXg0oU8sd
         wAgTfgf+BwWt1jd36FNQINnNJY8M1zaAnCjG4sOmv1YRCigv35AljMZj/GlAapeT5NFe
         0A/7fr4sFaRQPD8km9ZTwDXOcozbqW83Ze3ovndj/6TQxLOzgOUjTPP94WzMHgMQT1Hd
         m2lKIPItWYssnQEKgAMfiYFB+JFNF67cMdQaPm9fQeZBfKNp+tmf0h6VkqE1h18pH8MV
         oj7Q==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUYZYwONsE7VrL1Kspqnc5oGbyIscHjaLcNduHMFsjNr9zlE6ECoj5gGZj5D7b+vw/dpPepww==@lfdr.de
X-Gm-Message-State: AOJu0Yx8pFvLr50GvS5LwnHyE99/KeiZUMXoGNV6aMynAAArxSLboKTb
	OnjzRYk7imAzcBXT9dTpBazswyTjHI5yQdVSAmUdAEmWA1YO/VVh
X-Google-Smtp-Source: AGHT+IGrwih1sF3FfxRtJ/LMOOwB82t+DUCjvb1RW1psLE7BkJEbfHkc1dXSVn8wekgG1dz1JGE8gw==
X-Received: by 2002:a05:6214:4908:b0:6cb:bce2:5570 with SMTP id 6a1803df08f44-6cbeff65cbcmr106675906d6.30.1728744132581;
        Sat, 12 Oct 2024 07:42:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:20a3:b0:6c1:7c1d:2ffc with SMTP id
 6a1803df08f44-6cbe5668f13ls18961506d6.1.-pod-prod-07-us; Sat, 12 Oct 2024
 07:42:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXrM0k33lokS7Trs25hyZ3Qalj0ImVS0McJyFfXJ/jX5PJjuXh+AY+pODsZbAQCXgaWjYnMuQ1QxXN2@googlegroups.com
X-Received: by 2002:a0c:e951:0:b0:6c3:5a86:6a29 with SMTP id 6a1803df08f44-6cbeff4f980mr82986776d6.21.1728744129598;
        Sat, 12 Oct 2024 07:42:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1728744129; cv=none;
        d=google.com; s=arc-20240605;
        b=hQq8IqoTiWKiN3rabhUGNXRgm98Kdx5AzIpsDow/E6/2kWkelzFFMSVOYXb8p16W2s
         13+wEVXdxmQxVxfpth8XyXdN1kiLvUb6wcZk/dDoW4+jh6tCZkVZzfjYUBAOKonk2vM1
         2Tly0Sg2KZKcO3SlF8jox3wwhRCCJTOVM62wfvRyVZjgY8Sdg7sBSWlELjxkNK9WiN3E
         MZpo0ypKZcnaKq2jfbDFPqbNuvdNocaRFEbvkOlHKAerT5yO5mPQegm9qNR948ru8NC0
         8FJS8w21Zv8cFynbJCnasyt3bRN7jtpaECylCi3AdzUP84T+TyWaATtlOaglqPzD7aVK
         ffJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=usFeQvYr7fBlMoZz3DuXt5G9SO8xDCIqk4JRZeLk0ik=;
        fh=dAhyQ6eGx+Uwv9yd9Zu2h3j90cfa8xvG5MBdaMS13Ms=;
        b=Cm3lHUIFZpPW2e+dt50ThAXTvRdPvsuZAff+M777t1ZQqE/0Au+zyu/kAyMOG21arZ
         oOwV0A16IEvZPVfKarLGUf0AA9ojdVE+bnVFyAND7NJjKTsbH3n9IFC/A0x3HcjyXDI5
         h+GN6Qh+kiSAZmTpM6PCb1Rk/V/4yPke2BZHa3RqjW8hVBHk6AQrTsyakASFmknPZg7V
         UiW8VELJpvLvwQVIEqpzOzO35Hm2V4ZgJKq/um04go7SpqzPoY0epj7Lq4DRhdq2rzsg
         jgpEt4Z+ki9nUPg3+a+JEgoEfEEtCUgmdISbhnvWcDvkKFgSJRQWGWe2J/OQIz4v7RRM
         Tj8g==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=FuqqTuW7;
       spf=pass (google.com: domain of lkp@intel.com designates 198.175.65.11 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mgamail.intel.com (mgamail.intel.com. [198.175.65.11])
        by gmr-mx.google.com with ESMTPS id 6a1803df08f44-6cbe84216e0si2311736d6.0.2024.10.12.07.42.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 12 Oct 2024 07:42:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 198.175.65.11 as permitted sender) client-ip=198.175.65.11;
X-CSE-ConnectionGUID: gtaJz8aqT96ZC3ZNk7935A==
X-CSE-MsgGUID: Ua0igwleQEmBeOGfl8PmEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="38701957"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; 
   d="scan'208";a="38701957"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2024 07:42:08 -0700
X-CSE-ConnectionGUID: utdfJkvhQ2yDhvLcqKNbSA==
X-CSE-MsgGUID: fYXBx54oTSedr960HhydTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; 
   d="scan'208";a="77043030"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by orviesa009.jf.intel.com with ESMTP; 12 Oct 2024 07:42:06 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1szdJj-000DQT-29;
	Sat, 12 Oct 2024 14:42:03 +0000
Date: Sat, 12 Oct 2024 22:41:36 +0800
From: kernel test robot <lkp@intel.com>
To: Xiang Zhang <hawkxiang.cpp@gmail.com>, lduncan@suse.com,
	cleech@redhat.com, michael.christie@oracle.com,
	ames.Bottomley@hansenpartnership.com, martin.petersen@oracle.com
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org, Xiang Zhang <hawkxiang.cpp@gmail.com>
Subject: Re: [PATCH] scsi: libiscsi: Set expecting_cc_ua flag when stop_conn
Message-ID: <202410122213.bq19EI34-lkp@intel.com>
References: <20241011081807.65027-1-hawkxiang.cpp@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20241011081807.65027-1-hawkxiang.cpp@gmail.com>
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=FuqqTuW7;       spf=pass
 (google.com: domain of lkp@intel.com designates 198.175.65.11 as permitted
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
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Hi Xiang,

kernel test robot noticed the following build warnings:

[auto build test WARNING on mkp-scsi/for-next]
[also build test WARNING on jejb-scsi/for-next linus/master v6.12-rc2 next-20241011]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Xiang-Zhang/scsi-libiscsi-Set-expecting_cc_ua-flag-when-stop_conn/20241011-161915
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-next
patch link:    https://lore.kernel.org/r/20241011081807.65027-1-hawkxiang.cpp%40gmail.com
patch subject: [PATCH] scsi: libiscsi: Set expecting_cc_ua flag when stop_conn
config: x86_64-kexec (https://download.01.org/0day-ci/archive/20241012/202410122213.bq19EI34-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241012/202410122213.bq19EI34-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410122213.bq19EI34-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/scsi/libiscsi.c:634:3: warning: variable 'sc' is uninitialized when used here [-Wuninitialized]
     634 |                 sc->device->expecting_cc_ua = 1;
         |                 ^~
   drivers/scsi/libiscsi.c:618:22: note: initialize the variable 'sc' to silence this warning
     618 |         struct scsi_cmnd *sc;
         |                             ^
         |                              = NULL
   1 warning generated.


vim +/sc +634 drivers/scsi/libiscsi.c

   610	
   611	/*
   612	 * session back and frwd lock must be held and if not called for a task that
   613	 * is still pending or from the xmit thread, then xmit thread must be suspended
   614	 */
   615	static void __fail_scsi_task(struct iscsi_task *task, int err)
   616	{
   617		struct iscsi_conn *conn = task->conn;
   618		struct scsi_cmnd *sc;
   619		int state;
   620	
   621		if (cleanup_queued_task(task))
   622			return;
   623	
   624		if (task->state == ISCSI_TASK_PENDING) {
   625			/*
   626			 * cmd never made it to the xmit thread, so we should not count
   627			 * the cmd in the sequencing
   628			 */
   629			conn->session->queued_cmdsn--;
   630			/* it was never sent so just complete like normal */
   631			state = ISCSI_TASK_COMPLETED;
   632		} else if (err == DID_TRANSPORT_DISRUPTED) {
   633			state = ISCSI_TASK_ABRT_SESS_RECOV;
 > 634			sc->device->expecting_cc_ua = 1;
   635		} else
   636			state = ISCSI_TASK_ABRT_TMF;
   637	
   638		sc = task->sc;
   639		sc->result = err << 16;
   640		scsi_set_resid(sc, scsi_bufflen(sc));
   641		iscsi_complete_task(task, state);
   642	}
   643	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/202410122213.bq19EI34-lkp%40intel.com.
