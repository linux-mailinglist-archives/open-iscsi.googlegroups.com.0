Return-Path: <open-iscsi+bncBC4LXIPCY4NRBOFAYS4QMGQECEDDWUI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A479C347C
	for <lists+open-iscsi@lfdr.de>; Sun, 10 Nov 2024 20:57:49 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id 98e67ed59e1d1-2e2d396c77fsf4753868a91.2
        for <lists+open-iscsi@lfdr.de>; Sun, 10 Nov 2024 11:57:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731268668; cv=pass;
        d=google.com; s=arc-20240605;
        b=MtjBcXPrkqPMFjiYxmi1cGMSXkO5iNNrUfg5HUHIEA0PMQDWrfoG6RCaxFZyu9/YaR
         gDGPhZ+Xj2ttcHHlV6VLy8gfVqHxcDJmVWEphX9A7MbB+6emj+lhW9kAaiT6AMjF9/Ue
         9C0uY2qcDz6lV/NdxHRH+xyinTJsw4DCL9Y6DNtI0zusWLYsqlaqpcmTK04wA1dBFVm4
         r5ijN49ey8ZjWZsoFPixnyd2FvoNqNZ1vd6ZiXICqp22nSiAO3lTmcSrUE231sYtsUZE
         twbT2/TKVi4DZQVhsnDks6bJ3nK8Sxofp//Qj2c/Z8FjaRSAupM0Memq98bb6g8lg3LA
         z1Eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AaCXNoW0XiF5D4CkmJVamrdwA2iAH2x53qQ16dFy8A8=;
        fh=2Vfy43KAiRFN3XZeRwzDTY4aJgC1A0II3hdy6ErbPMs=;
        b=AzHhRl+Urw8jaQQx4uEA2uzrlomPvYDSArLcV4/d867vmF0/b8JPpk7x5SASsgIvzf
         LrgLL59FX55gzDo8jXuH8LAOmT8Q1d6vf1tR9VcLRruzfYZuhO+EITfh1zJJm/fVo3o8
         5i2ntrBLO1jmY901HEL/fSZO8vp2IL89z1WAzm+DHX0ejqq1uAaTeML/Ni3FLfs8s7bg
         QR/JxCTNwKhwHHOSHRgiOF7XxN1ZD+syf1exfA7KLAR5KzOvZdrv7VQ2MUiR8FOsfK8X
         ae3mVCga532k/V6mDLjIerD88JNle3tMbh5OtZVH2XIfF4+hJKzQyDQ5ROS8SGoZ4omB
         C6QA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=RI5N6bs+;
       spf=pass (google.com: domain of lkp@intel.com designates 192.198.163.8 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1731268668; x=1731873468; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AaCXNoW0XiF5D4CkmJVamrdwA2iAH2x53qQ16dFy8A8=;
        b=RgS+Msr/dyJMW+d8nxXfx33cIB8l5BRBOgrN3cdjrl146Frr9DlhTVtzy61kB3U9be
         u6zQ6Aw411Z7snmMMA2dbNlOnAVGP+ebVB8oPjcClGknXPe7a02ZDtwJjT/EagVam3VK
         ubHITNej4X5K7oQRkaeW3vWRdlV+DOMoLlY5slIl+aLWGS+g6t1pBDwG/BEi/c+uxkW2
         DJeJLfVjmB4bPLBlsKQjcdUQ3UZGivHpam4saQV4xXD/tcrFJecbNP47arBsIApaD/qG
         Z9eQAtwTzHtQe/X7+1+dAC8Doshk8SvKVCbx9z3khBfL62Y4jMi+ST93tkOKrj8hnpvd
         Hppg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731268668; x=1731873468;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AaCXNoW0XiF5D4CkmJVamrdwA2iAH2x53qQ16dFy8A8=;
        b=TETgy6JcZwb+Ry6Sht953Z16p2scyxNqqS3w1NN19KQSeC2Slh/4HJno5vChua52+0
         7c2cPzV7G4KZsu5gp+KcKInJ+s/rDmo9pIUfHFaOe4u0T84pO+lbPQQSQsEBsp/Mal+l
         Oeu++/0JzI4vyLNQIF1EnwHxqRKz5o8U306SpWm1ab2Epm+EN3Bt851aAKpRR+RyM1GP
         ivtwI+cvUjtVeEQKoO14gKICnc6kXJWKVA5cqnNK5b3DvANMizFL+jeWuAf+393qwGqy
         3J52rc3ku06UerOpmwsSBE4msLpeP9XJffpdfIvnfEySzU2/Kx6fUoCCTm0r0op8vph0
         yMoA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCVVnrtMzVkS7j7a+XUYpudeOiD8ZTMHjlkygdzNMvcyl4i7Eg/Brz17/xfxSxrge098Yf9JVg==@lfdr.de
X-Gm-Message-State: AOJu0YzmoHbXFm0ZnMrpU3xzjQJrs4jk2s1JdeLTlMh7XZILO8f7xkjL
	M5tfd4/oJ7MXbvFUvXSbXYUwdr+8fU/dSfnIM4B0wntxrcXuYLt5
X-Google-Smtp-Source: AGHT+IEte/zaVBP+D3aEpeM6s7OGlZV0n1Y5m05cWPhU2pAXR2yOoeDj7JQ+PadJMJkXUa6JUe3kwA==
X-Received: by 2002:a17:90b:2ece:b0:2e2:d33b:cc with SMTP id 98e67ed59e1d1-2e9b172e0bemr14426337a91.21.1731268668027;
        Sun, 10 Nov 2024 11:57:48 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:2dc9:b0:2e2:b20c:8c63 with SMTP id
 98e67ed59e1d1-2e9a3e86abals451368a91.0.-pod-prod-06-us; Sun, 10 Nov 2024
 11:57:43 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXEVqvRUvNNR7i1IiWncA7z1WXPSMb5JwntCX1l+C9TwwQNh/MxqRIVs0SFrqfIvI884Ps1mr6fiFac@googlegroups.com
X-Received: by 2002:a17:90b:4c88:b0:2e7:6a44:daff with SMTP id 98e67ed59e1d1-2e9b170b5aemr15009084a91.10.1731268663193;
        Sun, 10 Nov 2024 11:57:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731268663; cv=none;
        d=google.com; s=arc-20240605;
        b=keoCSU/ViqLv6yuMLWN6hDtr5EMXfGiQzA2SNS+gJVXrR/XLCyI7fU4KwB0Hpl3oCv
         gCbY4TLW1cPLHvT2MfGTatlNtNFBiijnEbQhoVZN3V2FAZcsWt17sKjqZ1t7JcA1Un9J
         7TPikosXDUpjuRA/eJ5dQqNpwJky7h8mJq1/dH0RFrDkf74W7UVxs0imfNSP2AZzXPU5
         BrictRD7Mgp8sm1sCSgj+kRzTuXsG0NVuZx0lxEyKe5nkNoNkakonad3uJUaEpPmEcgV
         XB+Tyc+eDcA1k/qpkeTTgQV1GPRCqnhqaR/MQ12PdwYNZ8WKyTB9fLUQK0LB0AAJzihs
         1CVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8zYgj8ooQRYlremu0iOecIjPAZ9U7NmFht1p3KzYCEM=;
        fh=u20kgfAt4vuDqzeWnp38GYtRjkib+8u3Uq+yIUrpVJk=;
        b=Jg0CT4XPtYhFkMKoo7srdiwa06yZ4ViLZ+c/XHuPdjGknQteNgODxeDRah9jjp3okK
         MvY5uDSvMMCjjfwXmawdSoklnnmGCbBfZLoGSBFX8jZvBQA4pAk/9iPJ0C8MhyU3/0qR
         oOpu8imkCIOU1sWP6ahvXJsGPS9ZbEkjNSz4b83Vo0HbqBJSNWxQzA4Siuo33+UOxgUM
         klyb6KpeXO5/5Fl12J8/RRsuIb3x7UWxgraD902oICQ/MELZY8AB/pLlOTTNUlmI7tPL
         CMs4n7Kf5VoBgyvHuGP8m41g0753lJ+s9n1dYA6K3bSCtu3P8h/WAQJ4viilQ++i+lO6
         CXgw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=RI5N6bs+;
       spf=pass (google.com: domain of lkp@intel.com designates 192.198.163.8 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mgamail.intel.com (mgamail.intel.com. [192.198.163.8])
        by gmr-mx.google.com with ESMTPS id 98e67ed59e1d1-2e9bd5fd603si341413a91.0.2024.11.10.11.57.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 10 Nov 2024 11:57:42 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.198.163.8 as permitted sender) client-ip=192.198.163.8;
X-CSE-ConnectionGUID: F24OUvXdT1e3C9DyInVCQw==
X-CSE-MsgGUID: 3KGefcUMSgeZrYjrDTjRUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="48595992"
X-IronPort-AV: E=Sophos;i="6.12,143,1728975600"; 
   d="scan'208";a="48595992"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2024 11:57:41 -0800
X-CSE-ConnectionGUID: xm8BLjwFQE66C3JJgcMDxg==
X-CSE-MsgGUID: TMBMR7lxSEWJ8u7Jhr0j/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,143,1728975600"; 
   d="scan'208";a="117488860"
Received: from lkp-server01.sh.intel.com (HELO 7b17a4138caf) ([10.239.97.150])
  by fmviesa001.fm.intel.com with ESMTP; 10 Nov 2024 11:57:38 -0800
Received: from kbuild by 7b17a4138caf with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tAE40-0000Mv-14;
	Sun, 10 Nov 2024 19:57:36 +0000
Date: Mon, 11 Nov 2024 03:57:24 +0800
From: kernel test robot <lkp@intel.com>
To: Thorsten Blum <thorsten.blum@linux.dev>, Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: oe-kbuild-all@lists.linux.dev, linux-hardening@vger.kernel.org,
	Thorsten Blum <thorsten.blum@linux.dev>,
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] scsi: Replace zero-length array with flexible array
 member
Message-ID: <202411110336.IDRXgcR4-lkp@intel.com>
References: <20241110151749.3311-2-thorsten.blum@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20241110151749.3311-2-thorsten.blum@linux.dev>
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=RI5N6bs+;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.198.163.8 as permitted
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

Hi Thorsten,

kernel test robot noticed the following build errors:

[auto build test ERROR on jejb-scsi/for-next]
[also build test ERROR on mkp-scsi/for-next linus/master v6.12-rc6 next-20241108]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Thorsten-Blum/scsi-Replace-zero-length-array-with-flexible-array-member/20241110-232327
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git for-next
patch link:    https://lore.kernel.org/r/20241110151749.3311-2-thorsten.blum%40linux.dev
patch subject: [PATCH] scsi: Replace zero-length array with flexible array member
config: x86_64-rhel-8.3 (https://download.01.org/0day-ci/archive/20241111/202411110336.IDRXgcR4-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241111/202411110336.IDRXgcR4-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202411110336.IDRXgcR4-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/scsi/scsi_transport_iscsi.c:23:
>> include/scsi/scsi_bsg_iscsi.h:62:18: error: flexible array member in a struct with no named members
      62 |         uint32_t vendor_rsp[];
         |                  ^~~~~~~~~~


vim +62 include/scsi/scsi_bsg_iscsi.h

    57	
    58	/* Response:
    59	 */
    60	struct iscsi_bsg_host_vendor_reply {
    61		/* start of vendor response area */
  > 62		uint32_t vendor_rsp[];
    63	};
    64	
    65	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/202411110336.IDRXgcR4-lkp%40intel.com.
