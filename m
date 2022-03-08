Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBJ7BS6IQMGQEQDWL7SI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 303B24CFD52
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Mar 2022 12:46:50 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id y7-20020a626407000000b004f6d39f1b0fsf4472232pfb.5
        for <lists+open-iscsi@lfdr.de>; Mon, 07 Mar 2022 03:46:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646653608; cv=pass;
        d=google.com; s=arc-20160816;
        b=ViISnfb/NW0R2aXTwfjT9aW4uWZ8LoRpnWJ2/fJYOG379OuOhdo1Dpq2hKbOt44foS
         9URtE1NxyZQNYziYFG3oBhlDuwikDyX0vH+l19cwRwMhQbHs+Y6RtRdnzJcTfiOio0TN
         dP9gimw2ONWAR9s6o0oW3eE65tZBeDCF6GcHq1ve8vmbES0qFaQQKy5orcMEN4IsVJ3o
         BL6Hy0/eA9oA28u7hb5wxqOKJQ0ZNZHoklBF8P9kMQWfLtVQVq/aXMiU8HcXIQIqp0Aq
         Z0rOIASvSRtzTCWbI1OuPL71vWdH/gw3zUoKI3+yNMJDs58uff5f1p1oHhXCZJRISmB5
         GCfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=bTKhcSObr968uXQ5a3a0LQxf766fDDlXwZPHjYqYkmo=;
        b=ckMqWTmDtxdyIhrRCcurLYCFN6iq1bg4+rCcMhea0xnhgoePfGuNpSjkEaZY53u86l
         7+RBmk/0fFPpkPQJDuMShuoWQ88nzxX8+EPkGmueoLdUVKJYFm0kXihlSYHXLVqkmQIH
         oRa7Zs6cwqHJQysD/SLDQGG9kPkNuWMd+o/qlgobKFKH3yKw918kd2ZYlQm8prgzMpSd
         8Jp3/N6EwmVTTH7XPA9FB7WQEXmmiFA7NvI+gbs7cWzELYWRICruIVULJVUpioVwodUU
         fnJUXanxMHsZ78pSILHNRdiakSjh4v2TVNB7sVqZd4ipxhUSD9ZzcynZOFO+Gc/8pZPL
         j62w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bTKhcSObr968uXQ5a3a0LQxf766fDDlXwZPHjYqYkmo=;
        b=VkYhAJCHZMRv/D1eHNQDNg/AfHkU1UNd648iw3bcmtatiCCmON7TPStbV8uc/v+x1C
         tcIfLBeZR+5VgQU0PCzjzgfYxZ7CbytNAUlwzryKBl50ImS1CwFmfN5ans/VnuaLV6rq
         mm2NBkZSKS3R0HG+CN9xCGUBOCqkj6qwcZLxmKEUmjEHRoJdW2hjOtcn/FfBnnwlyVId
         AShy7bnzKW+g7b86ERAWjyGR6vi5kUTaDYu5flsjsLHaNZhJmCiVWaqv1yoPsYE9WVqk
         F8tsi6fJh2mJNKMinaUmtw+za4NeKVlz04a/eOv/kNY/W8qhk1r7psUO3C/WNJ1XiTNl
         wCsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bTKhcSObr968uXQ5a3a0LQxf766fDDlXwZPHjYqYkmo=;
        b=MjPUAWwMPyvwPodp2yFR5/y/W0c7ejjVjLYKVqg2n/aIgW9Fx5rAKCGTolqJQIoPMO
         16rxJqj3HjBz+xLhvM5W0qAxaeZsqK6enKYZHpIEuCq1nIwReBJZMoWIAgUFn0ym9HVL
         cz17b+AN0Gv3zWV+Lv9VMF/U8BZEE4uEZFP6qG/Gnhf+kNz+JtDEmsrcEtv9ZaHmz93O
         DjL6jFR8IGcxlhoK2tIXTydjQxraGbX0gRtH5a8Tpd1z8Hvyql2Uq7cwbHHtkjxE9v+t
         Ju7LiS4ydnvEIhwlr6ai29HIZQ65OZ5Tj55ncYD3VtNpSNGVeekcKRTM8yoTMCxvk4XY
         JnHw==
X-Gm-Message-State: AOAM532E3Ik6m3qW7/eGNJq4cN/BG13VPLLnlE0pTgG/UCGkp7qx6ce8
	ufByU7wlX0g3jYkfVvrHmd8=
X-Google-Smtp-Source: ABdhPJzm+w9iW7YHQWtP3FHKbnhqIld7wMrtBW2KcRF6nYo0JnZIBdrOX7Wet2Gmh2ZbXY7PE+6Ylw==
X-Received: by 2002:a63:8648:0:b0:37c:b29f:9c33 with SMTP id x69-20020a638648000000b0037cb29f9c33mr9505838pgd.590.1646653608617;
        Mon, 07 Mar 2022 03:46:48 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:380a:b0:1bc:a1d6:1b74 with SMTP id
 mq10-20020a17090b380a00b001bca1d61b74ls13693511pjb.3.canary-gmail; Mon, 07
 Mar 2022 03:46:46 -0800 (PST)
X-Received: by 2002:a17:90a:bf86:b0:1bd:6057:b77c with SMTP id d6-20020a17090abf8600b001bd6057b77cmr12499013pjs.72.1646653606473;
        Mon, 07 Mar 2022 03:46:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646653606; cv=none;
        d=google.com; s=arc-20160816;
        b=H5U5mvshopec/oouNPUOOAPXU+25o6E9GJICkCsgTLEUjvKqn1g/R0nIRCWBCPOoHz
         dpMyZ/3hqF5C/GubYPez8J5YTBlbNoqPyNYfynwjPh6xC7V6G7OC0ZTh+CZXZY8OO/2f
         cZiWIPAtnN97Eo1AlQawIWrRpD4ymUlQ5Ba2Ep8bS71u/EFGHuA0f+SiN44QDWWRAXqx
         9krzXbZ/K1th2HHv2LR3iWENJrY3mydR0rH4JiV1Xa7VN0iEH0F9ZaXzGbMp1LysP3xF
         anKbi+U2ZfOBpa46cmhW/h9ShDrwLSyCYsYvsuui0nqiUKnUclMMbctJpB7Wu4v+v9Ug
         /alQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=VRIFNCIizUSpP44FeOrT+aZfNh0VXqNQvrF5SdO4dps=;
        b=MWeu97I7Po4AeeiKuCdlU4mh6aYdJVRlRKz23Rup4YrLaDWd3bHn5EBZX+PvVBlhgl
         Q6RCWvYBvVAT6n5klI2q3oQzIrL8CdnTC1XN2D7o3wEOasGHRixWd/rqd9ENJOJpxPwn
         A1HBGusyrtwbiVZSrHLOqdXqK4ePNH8R3A80eD7dzICmDYBjw4SOFW4j3X/Ca/vD5AbW
         VTsnqVeUokgTe/s62tkMH9c14gUFvcjNoWne3YQln/sKG/AN/sNbfaA1DqvUkppN/fAi
         NUIzqn+UdHB4NEqpSmiY8OAjq0zmymoP0ZwmoDk43YFzptPpeaZzI54zRFOEpYDPbjQQ
         l+sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id f6-20020aa78b06000000b004f6a399529fsi467695pfd.2.2022.03.07.03.46.46
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2022 03:46:46 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.54])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4KBxSh5Dh1zBrWR;
	Mon,  7 Mar 2022 19:44:20 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 7 Mar 2022 19:46:14 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Mon, 7 Mar
 2022 19:46:13 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 2/2] scsi:libiscsi: Add iscsi_cls_conn to sysfs after been initialized
Date: Mon, 7 Mar 2022 19:56:54 -0500
Message-ID: <20220308005654.2281343-3-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220308005654.2281343-1-haowenchao@huawei.com>
References: <20220308005654.2281343-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
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

iscsi_create_conn() would expose iscsi_cls_conn to sysfs, while the
initialization of iscsi_conn's dd_data is not ready now. When userspace
try to access an attribute such as connect's address, it might cause
a NULL pointer dereference.

So we should add iscsi_cls_conn to sysfs until it has been initialized.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/scsi/libiscsi.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 059dae8909ee..1cf25f4acb71 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3040,8 +3040,9 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
 	struct iscsi_conn *conn;
 	struct iscsi_cls_conn *cls_conn;
 	char *data;
+	int err;
 
-	cls_conn = iscsi_create_conn(cls_session, sizeof(*conn) + dd_size,
+	cls_conn = iscsi_alloc_conn(cls_session, sizeof(*conn) + dd_size,
 				     conn_idx);
 	if (!cls_conn)
 		return NULL;
@@ -3078,13 +3079,21 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
 		goto login_task_data_alloc_fail;
 	conn->login_task->data = conn->data = data;
 
+	err = iscsi_add_conn(cls_conn);
+	if (err)
+		goto login_task_add_dev_fail;
+
 	return cls_conn;
 
+login_task_add_dev_fail:
+	free_pages((unsigned long) conn->data,
+		   get_order(ISCSI_DEF_MAX_RECV_SEG_LEN));
+
 login_task_data_alloc_fail:
 	kfifo_in(&session->cmdpool.queue, (void*)&conn->login_task,
 		    sizeof(void*));
 login_task_alloc_fail:
-	iscsi_destroy_conn(cls_conn);
+	kfree(cls_conn);
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(iscsi_conn_setup);
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220308005654.2281343-3-haowenchao%40huawei.com.
