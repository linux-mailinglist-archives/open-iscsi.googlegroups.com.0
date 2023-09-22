Return-Path: <open-iscsi+bncBAABBJ6DW2UAMGQEWHJWYLA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 828A07AB352
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:10 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id 46e09a7af769-6bd899e2d3asf2793482a34.3
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392169; cv=pass;
        d=google.com; s=arc-20160816;
        b=b3+zn3qBkmWQM6cAs6PYIbbe6t6LTLq68YUZ3q1+yWXKgZtrpgh+dHIws4r1F6Pdpd
         m7bE2p5v65c5lJRbnC72t5CeZiedSbCzz1uqb48Sno74NhCZi4KqDOQaGH+lDutjmpVW
         PEwQtDjgGHGehbVaE3t3s8CzEovy9qb1CxqfpayHTZqMjR0FNs/ipl/9XLVeZLwPXrW3
         n5OFy/npsiK4/OUBcj6YMnwrt5GqzIGp5nPnpPvGhWXJ2Tc+AMNHTAxq43aBjkKVgPrg
         kOdMsoRhFVRYn/eTdAKnJRRHsgKCQOPEYJHzBvx0IXL1OL3CnBEu8iSuL3Xy7jnEhMfI
         vNWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=L9CLxDDuFCLvkf+JrMQtl2aqvASTChjOJgkQaLATac8=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=okbTISOhDkyudkA5sSOGvoX93fEXNqVsewzqLvSfaAOCmTAdIJFtkfnJy7NA4eqHrj
         gCGiKCryivCCsipC8GsBdcBvq7jAHDEbvZU9mHBHYOZaGMqwLTo3uTmxc+Hi42OtYhlQ
         2m1t71QCiGCkULxz9CHkG8sRZvWR7yYXKGl19tkLim3RBhxvTQp2c3QZEAsURy4oNywI
         KyUREh+qrIy+QHr+IuuvTKY1ocpmifH3Pa36v5HV1sBMo/0DM9/vtvsZbrtnxo35UNNH
         mkgNzNQydLfh8un48a5fC6fMQA7HRGRj1fNQ9KbfX9jUGH05Kk/VjEp94e5fC5iF5ffh
         M3xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392169; x=1695996969; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L9CLxDDuFCLvkf+JrMQtl2aqvASTChjOJgkQaLATac8=;
        b=OAdHo0uZh6E2u4emuJZKulzXsfkXjv6gE9PDxrBudgOs2kF0FD5J0uKFPWInhNkCQ/
         Jg/WoWFejxQBBgx3UWeh31J6EW0nC+opVuNLXMsHWowJiEebMEA798N/5f54ivmX0eC4
         BUycMAqn40SbYzoLJGWRt2rxYc7qua6B0s2ysj26pOVE95JFoaTfJHVEniOBMoaUgKE7
         GW6j/ygDgG6eZGq/OCHC+Sia6Fhx/wnu6oh2U5aq5ts38+ykgTwtN+G9Sfro/Pf8K3FI
         7ktIcqkYqioKooitcdP5DNqKgwD45tPd8DGWOhfGJd7KznQ1QNjNw8rwPNDWpi/Js9QT
         4jRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392169; x=1695996969;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L9CLxDDuFCLvkf+JrMQtl2aqvASTChjOJgkQaLATac8=;
        b=gXsusfiXv4GSlmmBYGRDRg+604OA5scm6Tz1LkkOTv3940dX3B3GipFLyUoh0+PZe3
         51FtzbsOS9WK8zk8fJZQgB7rzS+RxHKrLyeSNHQ0JVtTteoCbkXh/Xw4XNEV2RQHDztz
         wo/We9KH4tzdq3lA13K65dvGyP/8bz7Iu+qGjdLy1bIwoDg5k3eJ3RVKUA0qwmsnYgYB
         RHTGRsyup9NRr0AO8M3/oprCr0F+DrMvcUPKVSREqAbhL2nY77Q+4smQ5IAvSQ4Fi/li
         fdEJ+rjIsd/puHqs4gMe7ykEWOkXa1g+/8TmksZ71MEfOr1bJmWJOCmV+Tyvm15zEQMM
         7MwQ==
X-Gm-Message-State: AOJu0YzL87RMThBRz8dM2P126V1u2GZBweQ3/rjHvkyT42QCEZtyXg/8
	WCBpbgTHON+v4UuO6xJYYj0=
X-Google-Smtp-Source: AGHT+IE06V8/HpTM7DZeNcJhHUQj5vB1gJEn7VCuztuuYIQgDBjkuPxgz1W77BF0sPoHyI5toU27Rg==
X-Received: by 2002:a05:6870:356:b0:1b0:3637:2bbe with SMTP id n22-20020a056870035600b001b036372bbemr9116175oaf.54.1695392169070;
        Fri, 22 Sep 2023 07:16:09 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:d781:b0:1b3:d7b6:9f4c with SMTP id
 bd1-20020a056870d78100b001b3d7b69f4cls1495836oab.2.-pod-prod-01-us; Fri, 22
 Sep 2023 07:16:07 -0700 (PDT)
X-Received: by 2002:a05:6808:3026:b0:3a8:41a7:eafc with SMTP id ay38-20020a056808302600b003a841a7eafcmr4327930oib.7.1695392167561;
        Fri, 22 Sep 2023 07:16:07 -0700 (PDT)
Received: by 2002:a05:6808:1910:b0:3a8:4c6f:5bc7 with SMTP id 5614622812f47-3adeec243a9msb6e;
        Fri, 22 Sep 2023 02:29:35 -0700 (PDT)
X-Received: by 2002:a5d:8b54:0:b0:792:43b4:dc2 with SMTP id c20-20020a5d8b54000000b0079243b40dc2mr8740231iot.3.1695374975275;
        Fri, 22 Sep 2023 02:29:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695374975; cv=none;
        d=google.com; s=arc-20160816;
        b=h2cA/Rwt50HY9uvI1MyU1PjSc1ptf8FgdnHycPhwR2/hHC7VfSPf3dYYdOZpOhV6t+
         RAQKL1043j2lwF6GH+WYRWUKuhRPFRa7xkx6mRzOvOFG6K2Tph0UjCximm/fSoLp8wQJ
         FlZcUmdpWERbyQJLGQGCynIPLpxKGFqRzI9W3xT1IYWVpDRnn0bRyQtxxpQr4/T2L6lE
         hRDHM/L1hIrTX5A3rE9F5kaY5IJ+PRZUF8XLwWPhcwTifr9DCuXIfgcLMi7iXpcMnQyr
         5HWo/4OnQDbiujnVaq4fVbKpbT7mi3Fxv80ZntHYhgMx6F+lxCYC6NjsKexrFpLsiA6Z
         EgfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=CbKZAZgNFByTXgYhhZb+JAb+rP58lWXieK1Zk49Gsng=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=jG6JhPBqA9yNaoJ8Q1utFtbiR795/l5txNzDAoId05XiVUsPa7lUtlMGvCT7T7VZyG
         hhXj8ejmz1UqdkoLW4Fa5JgFsqdS0xFXlIKlP08QJhOC/geWXvwUEjvRpMTcyrsxtPrL
         v0hEZbHlPLHPwhKr6+eqaTgeQwa2EUU8RJYC2Uo51qvCXWml78cAGNusBQOjDeXNrq1h
         mXvTay8AOXJ0H9kLxpdsW4vjxfAeza+Nv1LxprrYxqRsclyFsJfWM/vZhtYvouC2AaKj
         2+sARPTlJ9v1bliZmusvZtR1Vu5B1KhOTrQfvxmzCnCohq0hmWsTc/Nl41nzF9zeqnkv
         p/pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id ed28-20020a056602481c00b0079f955fa823si263354iob.1.2023.09.22.02.29.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:29:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.53])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4RsRhf6r1vzMln8;
	Fri, 22 Sep 2023 17:25:54 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 22 Sep 2023 17:29:31 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, Douglas Gilbert <dgilbert@interlog.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>, Wenchao Hao
	<haowenchao2@huawei.com>
Subject: [PATCH v5 00/10] scsi:scsi_debug: Add error injection for single device
Date: Fri, 22 Sep 2023 17:28:56 +0800
Message-ID: <20230922092906.2645265-1-haowenchao2@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemm000012.china.huawei.com (7.193.23.142)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao2@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as
 permitted sender) smtp.mailfrom=haowenchao2@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao2@huawei.com>
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

The original error injection mechanism was based on scsi_host which
could not inject fault for a single SCSI device.

This patchset provides the ability to inject errors for a single
SCSI device. Now we supports inject timeout errors, queuecommand
errors, and hostbyte, driverbyte, statusbyte, and sense data for
specific SCSI Command. Two new error injection is defined to make
abort command or reset LUN failed.

Besides error injection for single device, this patchset add a
new interface to make reset target failed for each scsi_target.

The first two patch add an debugfs interface to add and inquiry single
device's error injection info; the third patch defined how to remove
an injection which has been added. The following 5 patches use the
injection info and generate the related error type. The last one just
Add a new interface to make reset target failed.

V5:
  - Using rcu list to sync between error inject add, remove and check
  - Add module parameter "allow_restart" to control scsi_device's
    allow_restart flag

V4:
  - Fix BUG_ON triggered by schedule in atomic context when rmmod scsi_debug
    Closes: https://lore.kernel.org/oe-lkp/202308031027.5941ce5f-oliver.sang@intel.com

V3:
  - Add two more error types to fail abort command and lun reset
  - Fix memleak when rmmod scsi_debug without clearing errors injected
  - Fix memkeak because did not implement release in sdebug_error_fops
  - Fix possible NULL point access in scsi_debug_slave_destroy
  - Move specific error type's description to each single patch which
    implement this error type
  - Add interface to make target reset fail

V2:
  - Using debugfs rather than sysfs attribute interface to manage error

Wenchao Hao (10):
  scsi: scsi_debug: create scsi_debug directory in the debugfs
    filesystem
  scsi: scsi_debug: Add interface to manage single device's error inject
  scsi: scsi_debug: Define grammar to remove added error injection
  scsi: scsi_debug: timeout command if the error is injected
  scsi: scsi_debug: Return failed value if the error is injected
  scsi: scsi_debug: set command's result and sense data if the error is
    injected
  scsi: scsi_debug: Add new error injection abort failed
  scsi: scsi_debug: Add new error injection reset lun failed
  scsi: scsi_debug: Add debugfs interface to fail target reset
  scsi: scsi_debug: Add param to control sdev's allow_restart

 drivers/scsi/scsi_debug.c | 557 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 552 insertions(+), 5 deletions(-)

-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922092906.2645265-1-haowenchao2%40huawei.com.
