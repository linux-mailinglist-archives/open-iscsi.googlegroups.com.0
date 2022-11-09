Return-Path: <open-iscsi+bncBAABBHGE2SNQMGQEHKNJ2JA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7F362C6B8
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 18:47:11 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id bv12-20020a0568300d8c00b0066d2c98ca10sf9179392otb.1
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 09:47:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668620830; cv=pass;
        d=google.com; s=arc-20160816;
        b=UN8IDER9bFPAaxCJ3LFYEAZsvGUe0/P5HyLDUqqqkRHZOVGr6HaYuxgkxU8k5BHpuD
         XhTzU4H+1Kn1wWt30PHgoU/2zlLmoKep9D9CPz7ARnvxFRQmWqoLj3AYJQHjXqp2eygh
         cv3dESAFZ74v9RhWG8VyoeWp1zIO1s5WAwp6w4YM6A8zYGXHjap38O/JyjUo+dlAYRrN
         RF9ZqZsGLe98U56IaZKppaqWIooVpmQsgGuIn96hd7/zPeOHjAEc1i7DwfVYmaOw2jIQ
         JKKd/hNQkQHuPmfh9ysUi+aFY0ts/tNrwJmN6Om9wX0E7ylIbMadA3v3kxwpJjyHSVOH
         R6RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=nTIeE4cE0/2E9zZQb5AYjcA/GphNvWTf6hTcT8GcmLs=;
        b=ARzbeJZARVSu3I7tQZDWPmY0v8BwRka8F34bb3dvb9EQmCn0WyfzsuRX+Zzd6k7pSu
         HCSjE1rWYvsTCXOawNS+NWzgifiIe0/ag8dd2V/eUC76einDjslgMHFdZiDBCmSKo288
         WAdx3g7rRg6jXkuj8GrZq8fXwNAVJxaejF+qEK5ukqzVe7woT9SS4czJRsQk4ZEH3b/P
         7W4J2EbCLFRLD6fLducjJ6f5iOprvIGMSUa6upc2kCrAUUoZaudLqKlIlgwtvyhCOdic
         VhpuUYgN2WBLkDdpIQD29OPMRXgenLZR8yGwqKN/fbY+9fUAHlp+u6FCkVQ/8jju7SeN
         MZ5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangyingliang@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=yangyingliang@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nTIeE4cE0/2E9zZQb5AYjcA/GphNvWTf6hTcT8GcmLs=;
        b=jflX5PGTp2Holh6CXraAoK+ihwN2ZWERHvEDoIevs8qHfKBMAIKnC0u/0u3gMecAb+
         fAcIg3u035o2zXZTqqra08UHb9KbDXAbS0zkxznb9E2qxglQxWoCYmcdeNF7PkJP19F2
         /R8NrbDV448wIUgmc/JAJfHSL3+5tcyUdJgCn5aI/G/f54MbLif8SoBvuc4QSf+faI1v
         PX+SUEizbKgkq+cKDjVAGE9hnx3q3qidchyv7FwVfowXi5k2nWofHiLV/rnFNWlvg/GM
         M6R/3bOlvveaY0X/OxMtBxsuFe/CZ94a1aBvlPE1HiLZo0jxJIyOFkboZpH8E/P3sCpi
         ycZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nTIeE4cE0/2E9zZQb5AYjcA/GphNvWTf6hTcT8GcmLs=;
        b=gZDG6R6drtie9CC9JGfWBgmzn6idJNuZCwcag1y4XQiU7TRDQIEfnNJR3micmWsS6l
         1hsBNusn56D1pCWcfJRDox79jZ4zdcMxiO4fuDuzeNI9NAuvEkGBCBkA6ManfnNYzcyz
         rAf19QKPMuSGskNeXpjLXZR3cdKTPiiHUJ05QY2rB4FwFaOs+9qtLmVg2BFD4MyYiGFt
         5Tc1AsDytdHEDXuFaR7fpknKbFtHxiYvjq+0EN8SCCLcRoqRhtR3pVXjmL+UJmcpp6lk
         iySYl9ABYP+uQejij9qtg+wlzkMO0o0TEE8a9SnKLSXOEcAmWMoikPYIfvZoiSMMtJTk
         o7ow==
X-Gm-Message-State: ANoB5pl7Pkp7DEzY8e6d6lBYBEozZkJ3aIXRgz1+hVlfjKG1ZfK9UVjO
	3+Lhe+cyOLFXlrNpU6meMKw=
X-Google-Smtp-Source: AA0mqf4tERX/xyA7FopJqRZwV247qsmADsH/k+cmeadW2CmviWpXF4uS+8SR64TyP/sFk2+fL1swMg==
X-Received: by 2002:a05:6870:7d17:b0:132:a3d0:4c2c with SMTP id os23-20020a0568707d1700b00132a3d04c2cmr2381614oab.256.1668620830281;
        Wed, 16 Nov 2022 09:47:10 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a54:4d92:0:b0:359:ca69:f473 with SMTP id y18-20020a544d92000000b00359ca69f473ls5668128oix.10.-pod-prod-gmail;
 Wed, 16 Nov 2022 09:47:08 -0800 (PST)
X-Received: by 2002:a05:6808:8f5:b0:359:fa2c:78c6 with SMTP id d21-20020a05680808f500b00359fa2c78c6mr2279253oic.3.1668620828559;
        Wed, 16 Nov 2022 09:47:08 -0800 (PST)
Received: by 2002:aca:df0b:0:b0:34f:c814:e6a3 with SMTP id 5614622812f47-35aabe647fcmsb6e;
        Wed, 9 Nov 2022 01:25:44 -0800 (PST)
X-Received: by 2002:a63:2f45:0:b0:457:dc63:68b4 with SMTP id v66-20020a632f45000000b00457dc6368b4mr51347542pgv.228.1667985943952;
        Wed, 09 Nov 2022 01:25:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1667985943; cv=none;
        d=google.com; s=arc-20160816;
        b=gNT8J3f0qqnjs+WlzCOzNzVCtuPmhiCqyX/63UNMRwsUnx8W7fnACBS6ACrIRFYICj
         sL1GOtxpunJA489x0h9lUeueYa05VTuiR2CL94DSxVT9SgLWhMMDTrcQPdvGZ3mvgjnx
         YinW/lj2GnVZiAL5fXgAmEjSr3dHmSJIRf8eUx8jt9Y/onVsPa8TLr3x7jgUx7Zc434o
         IfyRNcQLUkX1gAVHEb2+Y8wACsM6f5ZTvysVcTpzFxh//78QqfenWnI4XkZKY0nmsYhI
         WLaKLH0CS9dY5MLVSvEpIrCm58LgFsW0nUcVx8SBBb2b9UMyHObgUoVKTbxQO6QcD694
         obtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=HhZH8lM3ZeICYPDUqB6iUPfeQAnm3g4HeQgs/4gVvVY=;
        b=C0pRfYH81TEurR4olkrjBhW4PI/ZvW3JmbvIsIBVlBh2coBM5fp7MvSxZ8wyeHbH83
         Y9swZ2XR/4TnZugrh4aJWm3If13ixrQsxS8iCIBzThMLgFzRexBbCklQca7+kmcNvGR+
         y8DjLDJFVN2VI5ECLU5afcUlC7TbcDgGpMOowUFRLnu2qW8USiGf/3ixTgQ+uQSs3QZp
         DbHbIlB1RjUBSBkbFGOQI5wMkRH/W0WzjDclUSxfTjSFVm+V8DgJPqs/By7BDtQvdNgg
         w+JVgowOYJclvpxQLJY2govxG4C9exMcTNEC+XyUG/ysfdE/7bFnUJqqDaTI8mE9ldBy
         Q97A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangyingliang@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=yangyingliang@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id f6-20020a170902ce8600b00186a2f98b30si610382plg.12.2022.11.09.01.25.43
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Nov 2022 01:25:43 -0800 (PST)
Received-SPF: pass (google.com: domain of yangyingliang@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.53])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4N6fhT4sWSz15MVR;
	Wed,  9 Nov 2022 17:25:29 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 17:25:41 +0800
Received: from huawei.com (10.175.103.91) by dggpemm500007.china.huawei.com
 (7.185.36.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Wed, 9 Nov
 2022 17:25:41 +0800
From: "'Yang Yingliang' via open-iscsi" <open-iscsi@googlegroups.com>
To: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <lduncan@suse.com>, <cleech@redhat.com>, <michael.christie@oracle.com>,
	<jejb@linux.ibm.com>, <martin.petersen@oracle.com>,
	<yangyingliang@huawei.com>
Subject: [PATCH] scsi: iscsi: fix possible memory leak when transport_register_device() fails
Date: Wed, 9 Nov 2022 17:24:21 +0800
Message-ID: <20221109092421.3111613-1-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500007.china.huawei.com (7.185.36.183)
X-CFilter-Loop: Reflected
X-Original-Sender: yangyingliang@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangyingliang@huawei.com designates 45.249.212.255 as
 permitted sender) smtp.mailfrom=yangyingliang@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Yang Yingliang <yangyingliang@huawei.com>
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

If transport_register_device() fails, transport_destroy_device() should
be called to release the memory allocated in transport_setup_device().

Fixes: 0896b7523026 ("[SCSI] open-iscsi/linux-iscsi-5 Initiator: Transport class update for iSCSI")
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index cd3db9684e52..88add31a56e3 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2085,6 +2085,7 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
 	return 0;
 
 release_dev:
+	transport_destroy_device(&session->dev);
 	device_del(&session->dev);
 release_ida:
 	if (session->ida_used)
@@ -2462,6 +2463,7 @@ int iscsi_add_conn(struct iscsi_cls_conn *conn)
 	if (err) {
 		iscsi_cls_session_printk(KERN_ERR, session,
 					 "could not register transport's dev\n");
+		transport_destroy_device(&conn->dev);
 		device_del(&conn->dev);
 		return err;
 	}
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221109092421.3111613-1-yangyingliang%40huawei.com.
