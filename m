Return-Path: <open-iscsi+bncBAABBHGE2SNQMGQEHKNJ2JA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 9862E62C6B7
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 18:47:11 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id p19-20020a056830319300b0066c34a214f2sf9172340ots.9
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 09:47:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668620830; cv=pass;
        d=google.com; s=arc-20160816;
        b=RbOhIAT0J8KnqPxf9sJm0zFAm7fafS/iYzozDdyaiOdU0BBnhWtuIr4AIveJHIBoHD
         sSEqxzzCeC7ncNBneY3g0NWF4l5Xs7Fb0/IWqRX2q+DvF4qlG57cEluYleRIiah6Mq3t
         5Dd9hucp3jT1TCHFIuTod172ytJR28xqT2MO6nF/y98abJ8dhBTZ0ZtvE5Jyzz1DtX+n
         wG7CAaSCBM4qLlOvFxNhaIMLuud9dC0S2KXdww7xVOyAaVYalgsRWeezXM7LA5cV9fJL
         uFozUt7b1ERJ5tdteD/a4LgyVxjrteFsB0QGsZYnuxeQZR2MGNO2Bokr7LMFXuOcxNbG
         lmNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=77U5ljNkLQqxQtiv29Xq22ThC2G4f2vPQnC8002n3kU=;
        b=Kp4n5z2iDceWDiL8KdkLWLViNsiLRO/2bt1MG+s6/2i6io1FR5R/1Y41Q1huAH8rm3
         aGG15xYyvGprbPGSCiMJiKJ1d2GmyXzwt4VF9xrWuR4IMYm8OIOvP4UHajSydLTC7emx
         B3e7XULi2ondnDNicQ+M7BXmIrXupiZ/QPG+5X1LrJEZGOaGrpP7gK3U67kDBbye42cK
         gE/022ROxEOXX9uWf5tfVxesKEolsrhIg6lO+5CeXqq8VBRcGfmMYLLtC3oxFz28E84V
         k4cpMcl4/fWhI1kd1j0bo9QlaANjocx8bkC+CSqK2r7PR4L57Bqe8BOzFqaeIgQ+5Id0
         Zeyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of zhouguanghui1@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=zhouguanghui1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=77U5ljNkLQqxQtiv29Xq22ThC2G4f2vPQnC8002n3kU=;
        b=nvNl2MmNAgoAD89m6hQhpcU2eT7hAzkOZrotN2sZ5zf7BWwslSeFJ6YkRqwXRxOUBe
         Zd7g1T1n0lFGoOVGWHGFzY7GYnJ/nuzuLc9Rq+yURTdcx8UxJmUFFOHReO6CGDfMjWpI
         gmSlStGBzw4KyJMhBLQ70mUeUElps6tLlZnCiPFXdzBV5OrR2xsLVQMYcqKJZhYLws0b
         qS3JjTBgGGYkJw9o2OjFTDij+xfYzOiQYMpHVZ005hFvHUjgVYNp6r0JP28IG0EBPHIV
         DYa6y51aBeHl49etqGCajXiMMc12d0lmY24wj7tR7Vmu8m7ti5O4KC9NzQPn+EgfziE2
         fMFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=77U5ljNkLQqxQtiv29Xq22ThC2G4f2vPQnC8002n3kU=;
        b=uzaRNlIJp5tHK4epMdXWMfzC69X8Hmb22ltQaI3lra5sHct2km3zzUnvC+KYcwn32S
         pkhwTl+RnoEgizVrmNuI+2semqvgLt1ElxV79qJ9/2J9p5VEj0tiP7W1L/VRluSwLJNr
         494H88bzsyV5S7DVE1SupAOsrmHqvvnoQW9QbrSXjxgn1HkJTnPbqj4XoU0TYOsY1WXU
         5X/Yj+OZUGl+cnFIyKWZ8k/vjrfykARAflJ8zhO+rj6l4vWQCRw2rPwbXuUPNax9UjGy
         GrY6W6h319w9+wyC+94AB0A7rU1MOg++VcqhlMg54iRbtPRF+Td5ng4/2a6b9lgH42CA
         GxkA==
X-Gm-Message-State: ANoB5pmCyHjmKkZggLoVqzH/BBDxSseKEMzf4tBCiBnVKLTLDxyjhTam
	9tQoaX0rch2tOqRKkMbWgW0=
X-Google-Smtp-Source: AA0mqf7Oeo0hBjFaQxCLDrVR7deggYgMi9NoESV8lt1p0qcEckqbHqMMVoQ7HoGH5dKwCN4GCjk7Xw==
X-Received: by 2002:a9d:7852:0:b0:66c:ffc6:d31a with SMTP id c18-20020a9d7852000000b0066cffc6d31amr11510645otm.328.1668620830161;
        Wed, 16 Nov 2022 09:47:10 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:17:b0:668:d7a2:6181 with SMTP id
 c23-20020a056830001700b00668d7a26181ls3531148otp.11.-pod-prod-gmail; Wed, 16
 Nov 2022 09:47:08 -0800 (PST)
X-Received: by 2002:a9d:4b0a:0:b0:665:c072:305d with SMTP id q10-20020a9d4b0a000000b00665c072305dmr11664119otf.236.1668620828558;
        Wed, 16 Nov 2022 09:47:08 -0800 (PST)
Received: by 2002:aca:f1c4:0:b0:354:5eb8:7380 with SMTP id 5614622812f47-35aabb7d365msb6e;
        Wed, 9 Nov 2022 00:20:55 -0800 (PST)
X-Received: by 2002:a63:e348:0:b0:46f:25cc:d554 with SMTP id o8-20020a63e348000000b0046f25ccd554mr52188552pgj.598.1667982054813;
        Wed, 09 Nov 2022 00:20:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1667982054; cv=none;
        d=google.com; s=arc-20160816;
        b=BbDx4bVBqL+ODmCOjMoN4VSGqMcUDX5rhrKirUYkogB80AVuFlrxKiA2rKlSKRydG5
         iFrIAwdABRcD1kP5HVfBey4+K7sOPmQEd/KRryllh/ocjMmy+ZyhlAh1YyNC5wGXULww
         uSnCZRlwq5ceoTSF3qMN3z7tN07xlW2dU4xK5QswfELXJIqm/bPE4HEPBQIbVCkCO0Sy
         YGpDxum5HZOIl6b5UMDr9syutAUnuZyvlhUzW+HDkR7quw4OAkmRY39ELeAMqIRcBWIl
         yMu6GnUWDJ63yK/X61dRjQwU16IX1RSIKfjzdEvyz3SOCNzVTR0Z0R9/sjDa+OcDqeQa
         S8cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=a8Dg9hkTr6spbsKLduH61ynd6LfyTWHjm3aelgIx6BE=;
        b=i3jfOQWbKgO3zyIQaGXyvEguPQd1+Mv87l48UKq4uNs3kTTn5LUpla189yyf8AtpMM
         SUZV0y+etSL64BxGDuXXX5XWkwCvPmwm6ujlL0SuA0vWj+BZx4xbm6jszdg4MJzeFwK4
         Lx0ifLmtSmhl0m+rwbLd4A3TvKZJgkCkqKxNlwrQOqB7CqSYMW6S0u4M31fYxk2BBvCD
         LU1XGmsgQnJYSSGSciJ4YDYX0bsicOWJUHSSD4YU1FwVsR7CuidWsdK3mP13gh3T/kbE
         VWnwPJnGr7XDNSfD/VO/T6KNgn6GCyAVyjv2zcLIWwnMS+Z70FVlyfgTPCVU/E+rA7Cu
         94VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of zhouguanghui1@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=zhouguanghui1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id ob6-20020a17090b390600b00213290fa218si28421pjb.2.2022.11.09.00.20.54
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Nov 2022 00:20:54 -0800 (PST)
Received-SPF: pass (google.com: domain of zhouguanghui1@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from kwepemi500016.china.huawei.com (unknown [172.30.72.56])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4N6dBR1HCJzJnR9;
	Wed,  9 Nov 2022 16:17:51 +0800 (CST)
Received: from huawei.com (10.175.112.208) by kwepemi500016.china.huawei.com
 (7.221.188.220) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Wed, 9 Nov
 2022 16:20:51 +0800
From: "'Zhou Guanghui' via open-iscsi" <open-iscsi@googlegroups.com>
To: <lduncan@suse.com>, <cleech@redhat.com>, <michael.christie@oracle.com>,
	<jejb@linux.ibm.com>, <martin.petersen@oracle.com>
CC: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
Subject: [-next] scsi: iscsi: fix possible memory leak in iscsi_register_transport
Date: Wed, 9 Nov 2022 08:19:17 +0000
Message-ID: <20221109081917.34311-1-zhouguanghui1@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemi500016.china.huawei.com (7.221.188.220)
X-CFilter-Loop: Reflected
X-Original-Sender: zhouguanghui1@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of zhouguanghui1@huawei.com designates 45.249.212.189 as
 permitted sender) smtp.mailfrom=zhouguanghui1@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Zhou Guanghui <zhouguanghui1@huawei.com>
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

"unreferenced object 0xffff888117908420 (size 16):
  comm ""modprobe"", pid 18125, jiffies 4319017437 (age 73.039s)
  hex dump (first 16 bytes):
    62 65 32 69 73 63 73 69 00 84 90 17 81 88 ff ff  be2iscsi........
  backtrace:
    [<00000000f78a13b3>] __kmem_cache_alloc_node+0x157/0x220
    [<00000000200a51a4>] __kmalloc_node_track_caller+0x44/0x1b0
    [<0000000033ea4d64>] kstrdup+0x3a/0x70
    [<00000000ec6d2980>] kstrdup_const+0x41/0x60
    [<0000000055015f6f>] kvasprintf_const+0xf5/0x180
    [<000000009dd443d2>] kobject_set_name_vargs+0x56/0x150
    [<00000000f3448e98>] dev_set_name+0xab/0xe0
    [<0000000080ab8992>] iscsi_register_transport+0x1f8/0x610 [scsi_transport_iscsi]
    [<000000005e2c324d>] 0xffffffffc1260012
    [<00000000df6e6a36>] do_one_initcall+0xcb/0x4d0
    [<00000000181109df>] do_init_module+0x1ca/0x5f0
    [<00000000b3c4fec8>] load_module+0x6133/0x70f0
    [<00000000feb08394>] __do_sys_finit_module+0x12f/0x1c0
    [<00000000ca6af44d>] do_syscall_64+0x37/0x90
    [<00000000132e1a8b>] entry_SYSCALL_64_after_hwframe+0x63/0xcd"

If device_register() returns error in iscsi_register_transport(),
the name allocated by the dev_set_name() need be freed.

Fix this by calling put_device(), the name will be freed in the
kobject_cleanup(), and the priv will be freed in
iscsi_transport_release.

Signed-off-by: Zhou Guanghui <zhouguanghui1@huawei.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index cd3db9684e52..51e2c0f5e2d0 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -4815,7 +4815,7 @@ iscsi_register_transport(struct iscsi_transport *tt)
 	dev_set_name(&priv->dev, "%s", tt->name);
 	err = device_register(&priv->dev);
 	if (err)
-		goto free_priv;
+		goto put_dev;
 
 	err = sysfs_create_group(&priv->dev.kobj, &iscsi_transport_group);
 	if (err)
@@ -4850,8 +4850,8 @@ iscsi_register_transport(struct iscsi_transport *tt)
 unregister_dev:
 	device_unregister(&priv->dev);
 	return NULL;
-free_priv:
-	kfree(priv);
+put_dev:
+	put_device(&priv->dev);
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(iscsi_register_transport);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221109081917.34311-1-zhouguanghui1%40huawei.com.
