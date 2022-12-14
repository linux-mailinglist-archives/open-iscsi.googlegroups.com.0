Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBGXN4WOAMGQEWZWXDIA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id A147864C43E
	for <lists+open-iscsi@lfdr.de>; Wed, 14 Dec 2022 08:09:17 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id p11-20020a17090a680b00b002233455d706sf894204pjj.4
        for <lists+open-iscsi@lfdr.de>; Tue, 13 Dec 2022 23:09:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671001756; cv=pass;
        d=google.com; s=arc-20160816;
        b=nNGSRAu2YQeiryoz3rmFM48/jo6TyLmhPYYkUJLMCaGHAUaW9S9j9oezm5s1Rncvyz
         EZCLbeM+tIHLBL4ANTwkEphFy96P6UTm5LDEwRaz91+311dQIw5pjnDnbFlRiuPymoSX
         vd5BOfWArhY/9Etvo16b8f5b4p2fqDKtgYZ/dqUgbhFOb7sse3tVUb/cIUgYvh6LbpMt
         bdAIPTWLk/V+yzy9Jdz7s+yZiGroVxD1xPouAqtS4QdE9K2ozONYpGTEN8NFn5a5/kc9
         nJ5qMwp/K+ez/ta5RwgRFRLyt2xWm5ooafrPhFT5nDH7qEzTY45tJpiihEHC/GKK+edz
         Ls5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=Sk5eIvpbulf8GAShyaBntDtHMP3xKL6gOE1rvnKkVno=;
        b=M1ncpde86tHCmZAHGI8m+SlRRE7czk26hPBPvhQ/SG+sE9JKCxdrhQmO8GIImDGMv6
         W/JeHX1n4fV5dGE7Jna8zOXdKrNIZZJLVxzsiRKozMB2yCCed5KqlU33TzKBySfTIdVJ
         a8L+cQQigmht3jrtsbstW1+KOh8Jc+IADtsNS8+fUTko27aP8qnYeYvg5Dy0hdTA6fp5
         CskJYvTVyEXn6EkjNDiUNxWkRfW5TyaOdjxNWZad6IU7XdPxP9zVhE61BDRbc19TGu4e
         hu0XVq2687/aCt64mh6Ni7ZPh334cOloF2fhpvRJCMycSKS+G8rspk5f3bKDFMXlYRXa
         gB1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sk5eIvpbulf8GAShyaBntDtHMP3xKL6gOE1rvnKkVno=;
        b=fIg2pIos0AMJvbKiEpa27VqOUJdvNb5wfjy9ydkWAcYJT2S5Zl1J48e/kdG9I6WN36
         96X+YotX54zLdolvJxTb+T9llGSsLmSPCDmZRlhfCRLyKDYVqOt/iwcNp72dmowguFbM
         Y+6SfgSV8pb2sjCUr/RRCbdcpe657kv1L7oBCXsZZMH5n8jk9iWvXGyQIMvCHvHSoyVM
         h4LtJrLtBblwckeINBlsQTv3/oR//6W5Z9+gDkNS5hH/mwAanWPZr5Ilq5wwZZmmH4zg
         Ke1SqoGgBVRz9fEDNLFuRuEI/XJPgaYDo6pkLZtqAbQolcnCeuJ+C+GssBk+6vs0+Zd9
         W9FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sk5eIvpbulf8GAShyaBntDtHMP3xKL6gOE1rvnKkVno=;
        b=sLxDeZoGTfgF9044N7XXP0LuMove4Z0qkiLejY+A4HhpV/NEV38F9kCtsQeh7gMFRq
         cv/1+zuek8VsotstnZL8Q8Cvi3MA4g6ip1tzWfcV+DJeHSONTVL2qgZ4EhpuGpUTJov5
         /nJKEXSHKFmarIh0qnTqMLcSAefjYyJfgTDEhONX1Br7nODDdEw/maAR28OPgaB4Ht6y
         seJ6/BTtvHGO0MKTSL1olbdS85pMHC2vk3+TdHmOzjD4RmMzQHrH3jxttLhc9EZiHUPD
         tVLpy+Wr8yZZG4bJsvqy5R9Sbf7RoUWjlaVynJg94Ee2tgfKamLdFmrYgB6QbOIju6Qg
         l5+Q==
X-Gm-Message-State: AFqh2kq8HRKXueSRIeFHcp2sLh0UywbGZUcHrRCq4Mh0QleHxEXd63/c
	NcZAGb1rVoF2I0Z40RJJdZ0=
X-Google-Smtp-Source: AMrXdXsgyyKBwhS8jvrk/cQBpDy6EULytcTgBv24N51myDnZmlADmLB8kEU/t1NV5HL0ilr5C0fYXw==
X-Received: by 2002:a17:90a:cf13:b0:21a:8ca:f73 with SMTP id h19-20020a17090acf1300b0021a08ca0f73mr244746pju.82.1671001756138;
        Tue, 13 Dec 2022 23:09:16 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:1d4a:b0:214:246b:918a with SMTP id
 u10-20020a17090a1d4a00b00214246b918als25261973pju.2.-pod-canary-gmail; Tue,
 13 Dec 2022 23:09:13 -0800 (PST)
X-Received: by 2002:a17:902:7e88:b0:189:ced9:c9e5 with SMTP id z8-20020a1709027e8800b00189ced9c9e5mr23569882pla.13.1671001753586;
        Tue, 13 Dec 2022 23:09:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1671001753; cv=none;
        d=google.com; s=arc-20160816;
        b=e+fJYltt5GmuabZk3DC+A9HWKRU96GS9Kf4kqC4qqYwjIxIE9KxRUMmphgnwSx3uuy
         CFNNlWAl1ilWnOdh+vBDCPW8R4AphwO6SMCoMeLPyfs50WrFDgedLZpRdCR23Weet1Ex
         ucz9CasEqSgjRtWDMdCKooDJwK1MDtBEUZCAOLuS5L6M7uEXbYygj/RBRRiLTpY98THz
         wrlWK/5YZYG6p9Fi0u9Js8JLeMwJV91SbfwY0bqVFjdGVguo6x5gVdWH+s10Tde42yNE
         k2jA8SxmUgHPJgGt0GzXKPsnSrenkb1rsIejgilwUM7ZRMXR1d0Nru54pHEnaF2AiVir
         oVqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=nInrpxmmMlCkZidsUdjXn1rKxtcAkcwIilkaQjbMF0Q=;
        b=wHMigZEP3/u/fzTPbAhHdebbnhOxGOBT/Vh5jOEdPbRYWYncQJg14RBXT3QvLJybFw
         7s4L1GAh4IX/9XzsI+5VwuDSqvrS2TtvF831IGjlsERDTMK8OdzA4Sc52TQIFKtzAqqt
         GuKJ15mqX0MxUKe2Ye41myXPogYQ7yOK3YPHs7k9BqUHBSl6peOMo/mQHHjCl9yb0nL2
         Vz2liTSo+m1c9kc321jmArAjii3Bx2RJE18VaAFM61zXcdykreBCHoCuA7PSqeA67JPT
         ybICiE+E7x8pyB8eGUDathoKixL2lhD4PgADxFawTOvqHZP8DFQQCDpe45bkIOZcDgw1
         zQaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id i7-20020a17090332c700b00178112d1196si209312plr.4.2022.12.13.23.09.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Dec 2022 23:09:13 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500017.china.huawei.com (unknown [172.30.72.57])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NX5zv2WLyzRq37;
	Wed, 14 Dec 2022 15:08:11 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Wed, 14 Dec 2022 15:09:11 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "Martin K . Petersen" <martin.petersen@oracle.com>, Mike Christie
	<michael.christie@oracle.com>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, Lee Duncan <lduncan@suse.com>, Chris Leech
	<cleech@redhat.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 0/2] scsi:donot skip lun if inquiry returns PQ=1 for all hosts
Date: Wed, 14 Dec 2022 15:08:44 +0800
Message-ID: <20221214070846.1808300-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
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

commit 948e922fc4461 ("scsi: core: map PQ=1, PDT=other values to
SCSI_SCAN_TARGET_PRESENT") returns SCSI_SCAN_TARGET_PRESENT if inquiry
returns PQ=1.

According to the SPC, PQ=1 means the addressed logical unit having the
indicated device type is not accessible, it does not mean the addressed
logical unit is invalid. We still can map this lun to an sg device.

In some conditions, we do not want to skip these devices, for example
with iSCSI:

When iSCSI initiator logged in target, the target attached none valid
lun but lun0. lun0 is not an valid disk, while it would response
inquiry command with PQ=1 and other general scsi commands like probe lun.
The others luns of target is added/removed dynamicly.

We want the lun0 to be mapped to an sg device in initiator, so we can
probe luns of target based on lun0.

In first patch, I add an interface to control if to skip luns return
PQ=1 for inquiry.

In second patch, make iscsi_tcp do not skip luns return PQ=1 as default,
since I do not have iscsi_tcp environment, so here just modified the
iscsi_tcp.

Wenchao Hao (2):
  scsi:core:Add sysfs interface to control if skip lun with PQ=1
  scsi:iscsi_tcp:Do not skip lun inquiry returns PQ=1

 drivers/scsi/iscsi_tcp.c  |  1 +
 drivers/scsi/scsi_scan.c  |  9 ++++++---
 drivers/scsi/scsi_sysfs.c | 29 +++++++++++++++++++++++++++++
 include/scsi/scsi_host.h  |  3 +++
 4 files changed, 39 insertions(+), 3 deletions(-)

-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221214070846.1808300-1-haowenchao%40huawei.com.
