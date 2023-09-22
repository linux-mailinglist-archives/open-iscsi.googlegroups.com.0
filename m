Return-Path: <open-iscsi+bncBAABBQODW2UAMGQEWZ5NRDY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x40.google.com (mail-oa1-x40.google.com [IPv6:2001:4860:4864:20::40])
	by mail.lfdr.de (Postfix) with ESMTPS id D42577AB361
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:35 +0200 (CEST)
Received: by mail-oa1-x40.google.com with SMTP id 586e51a60fabf-1d6659a4207sf3064146fac.0
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392194; cv=pass;
        d=google.com; s=arc-20160816;
        b=LYaJPbGvmexSj2vNyOifReEbI5D0bHm7KO+7j81vRo/fFIUr8eV4Vucy6G8dg3/IYf
         iOW40IE6GbnPKFtO32d+wGUi6IR97oiJqwOCyTpi1vhAxThv7t7VJwzVlv7d92G6aPEH
         p2W5w9ZU3aw5MR/0vzuftq6eu7j7ZavfAqEVrPLGEF9KRWf0dBCK6/vqUh8GuouRRpRT
         wwz7f2BkyM7ZdWiweVWG+tk05dDsMrEk2dcROFQfEYtlCuoaZ/hd7kIweY4qxLllzzjj
         Vaq/RuAFPdhaoXK9qO9IP8XWxgEzcGH6MHnUKDTUqxcQV5FbtpuiDeoycuNcvaGQ0CKv
         PDUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=PY1lz1qERwrftdlwATLRudi30arT+YeOKSi13EbxFs0=;
        fh=czI/RuS43lIcejQG7heSpqlilKbUywFjC/3GVjzlias=;
        b=Obi8YSr1hbDLE6Il9GcixNbiQDhomcn88f5bRDzr0dqYSG8ihanvRks/xvKtFAq0IU
         YbCSN1ViusbmXNLP+Gw9RY7qXWinrod9w1af2Yknru1DKBqbkhOTb8//opmrXWFJ5Uzr
         b8bRM7ji6p1SsrUYGucDqufMRAbJ8FCR4pd0AAEMqnqCtUQsjC+E4stTXJWQjd4w3dEF
         YqidvSQ/8Fo1BQjUEsv7SLCAf5uF2XO5lZiOOhQ68wKVlATTkJ59V0rjXTjOeMsCx/07
         kbKd3L3NIGY5LUgLLnhNxMDJM3uCiVi5CWf49JB8t5yJTw98Lk+rQqGDve73pkky1gAi
         uJWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392194; x=1695996994; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PY1lz1qERwrftdlwATLRudi30arT+YeOKSi13EbxFs0=;
        b=jcjxHgxPvBA1uvq2Qh5kMDs87F+CBMvEMnl/TU8bkkTPT55jmYbIr0NUTESqIOtG9a
         QJoqiFB6Cs371j7juNfephSsO5I5OW1Nu/vcqx7ksP4nhBgm+4lcD8JOlUK/LYHIkxKC
         1diAhd3ceATqbTdv71fAj2fZNiam8cQ/YyPKFAzTJrVdNLOw/KBqzFWRY6Ws8+wZWkmV
         S+sMIxzBtPb3hg7hQplkjHfdtjHbLQeJzpnpqAA9LCcgavHY8hOnQQIPJmfqfM/gEzhd
         Ci+VEpea9dEIu1R+w/mtVSaPYX+u69GrexhgL9h0B8LwTD4R1wRJBV4WGHl8KKUvh9d7
         JYbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392194; x=1695996994;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PY1lz1qERwrftdlwATLRudi30arT+YeOKSi13EbxFs0=;
        b=eJpF86sKW1mzX7tTJ7GuSJ8IuvD6GpEQytwI3ttPZ7O8dfmV31+XMjNL7J+xj06mSK
         3NWA37e67gN8i/x5Ow46YN38T29BkyjdEpHKEikXx5pBroTE8rWniyWBzqjHQAX6BrOF
         r0R4q7XWJvwp4aI3D6ZCLDqspPwB9lyIgTzHlbs8WU9i8GMbnQbwmr2Mw1bwvo7ugDw5
         /b6xpQhMOebqmha4YSuxQK7LvRgArifX6qQfqF7iOGLhJ3zDzqMbY7n7rRgQ9bmMaL5/
         UHj9BgK+pxi7q9uZ4o64bSIfbK9UY5QSN975njyWbWa+lWFuFzCpYiwJLHucdIzONlow
         n8Wg==
X-Gm-Message-State: AOJu0YyGXPpKy+2HiA8zx+FKWDVeDt4U6pHQp3drCNHJlbMIPTGhN7NF
	NcGafo2D9de71nd1vRSaeSM=
X-Google-Smtp-Source: AGHT+IFR2+MD59sPghwwzjpvGauD6meSL5zYN9xpu7qSl69k6l3hLbA5kNMUWgps64I4Lj4tnBwf8Q==
X-Received: by 2002:a05:6870:4794:b0:1bb:a912:9339 with SMTP id c20-20020a056870479400b001bba9129339mr9021316oaq.7.1695392194724;
        Fri, 22 Sep 2023 07:16:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:648f:b0:1d6:5e48:6ce7 with SMTP id
 cz15-20020a056870648f00b001d65e486ce7ls1461430oab.2.-pod-prod-00-us; Fri, 22
 Sep 2023 07:16:33 -0700 (PDT)
X-Received: by 2002:a05:6808:1823:b0:3ae:1399:db21 with SMTP id bh35-20020a056808182300b003ae1399db21mr1489652oib.2.1695392193585;
        Fri, 22 Sep 2023 07:16:33 -0700 (PDT)
Received: by 2002:a05:6808:1910:b0:3a8:4c6f:5bc7 with SMTP id 5614622812f47-3adeec243a9msb6e;
        Fri, 22 Sep 2023 02:39:08 -0700 (PDT)
X-Received: by 2002:a17:90a:1347:b0:273:ec9c:a7e3 with SMTP id y7-20020a17090a134700b00273ec9ca7e3mr7949891pjf.17.1695375547988;
        Fri, 22 Sep 2023 02:39:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695375547; cv=none;
        d=google.com; s=arc-20160816;
        b=dCz4A999zvw3zNE5s7/cxmxea48qmIvporNWv2RACOg3EobOI92rpjkyPLh+I42j6j
         MSY9oll/aDLnFNcnH9b/TBbOAJgqeUXt8/WkzewYXe/HcMnLWQ+5o11F6VoXadTFPMio
         QJad6llnfH8edPV4ZOGL0yjVUVpIK03rFY+VekeUjYcfbNsXPUiMGHjTugVatcr+xVI4
         MCo0t9dxbU0XR7ykrY37IEC1HGb47LKMDQOV6E/w9Vz0qSrmkf45dIM8MPmFvyrpMFVp
         pfAYH7j6D5Frt9t/a/UQmrVmuJzzwoUWyaXWvRkFOyglEQn9/0zYGE0MiAIO72LvxxUh
         ErdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ttfCiqrtQHlqJ8AdqUYWOySmUrbqqrxCW0hA43VPY5w=;
        fh=czI/RuS43lIcejQG7heSpqlilKbUywFjC/3GVjzlias=;
        b=qcYF7L8OA1Ks4Ax+cEI79x6j6gkfZOpZQDDJQhciVw+iuJJgfuiOk0Ik5AMTqno/Nh
         6o7XpHbSPYifTpCLS+GM/WpgSsLDdlnQm85m3TChYMfStovJErG3W4lp3U4qgVhB1lPu
         p4+fQzCZQIopsOVjTwSg1+mfeC15vUS+udI1W6aJlk2IptGuXzTpBE+dCzk66SeLFwIF
         e5wdfTiYzCFNQ13rmTPvjiUliyeN5fsnD4WGZVVA/Ae1mYgejBL4wEDPl5Ijgc+VIvfz
         9Z4geJS6g6FzACTdyXucBKmCZSs9CWMBuWktRvzdJfGN9tPMocm0aSTVMHPVWPuU0MBX
         uPkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id c5-20020a17090a490500b0026faea70bbdsi782037pjh.0.2023.09.22.02.39.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:39:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.53])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4RsRxP42zKz15NSB;
	Fri, 22 Sep 2023 17:36:57 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 22 Sep 2023 17:39:05 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>, Wenchao Hao
	<haowenchao2@huawei.com>
Subject: [PATCH 1/2] scsi: core: cleanup scsi_dev_queue_ready()
Date: Fri, 22 Sep 2023 17:38:41 +0800
Message-ID: <20230922093842.2646157-2-haowenchao2@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230922093842.2646157-1-haowenchao2@huawei.com>
References: <20230922093842.2646157-1-haowenchao2@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemm000012.china.huawei.com (7.193.23.142)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao2@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as
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

This is just a cleanup for scsi_dev_queue_ready() to avoid
redundant goto and if statement, it did not change the origin
logic.

Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
---
 drivers/scsi/scsi_lib.c | 35 ++++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index ca5eb058d5c7..f3e388127dbd 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -1254,28 +1254,29 @@ static inline int scsi_dev_queue_ready(struct request_queue *q,
 	int token;
 
 	token = sbitmap_get(&sdev->budget_map);
-	if (atomic_read(&sdev->device_blocked)) {
-		if (token < 0)
-			goto out;
+	if (token < 0)
+		return -1;
 
-		if (scsi_device_busy(sdev) > 1)
-			goto out_dec;
+	/*
+	 * device_blocked is not set at mostly time, so check it first
+	 * and return token when it is not set.
+	 */
+	if (!atomic_read(&sdev->device_blocked))
+		return token;
 
-		/*
-		 * unblock after device_blocked iterates to zero
-		 */
-		if (atomic_dec_return(&sdev->device_blocked) > 0)
-			goto out_dec;
-		SCSI_LOG_MLQUEUE(3, sdev_printk(KERN_INFO, sdev,
-				   "unblocking device at zero depth\n"));
+	/*
+	 * unblock after device_blocked iterates to zero
+	 */
+	if (scsi_device_busy(sdev) > 1 ||
+	    atomic_dec_return(&sdev->device_blocked) > 0) {
+		sbitmap_put(&sdev->budget_map, token);
+		return -1;
 	}
 
+	SCSI_LOG_MLQUEUE(3, sdev_printk(KERN_INFO, sdev,
+			 "unblocking device at zero depth\n"));
+
 	return token;
-out_dec:
-	if (token >= 0)
-		sbitmap_put(&sdev->budget_map, token);
-out:
-	return -1;
 }
 
 /*
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922093842.2646157-2-haowenchao2%40huawei.com.
