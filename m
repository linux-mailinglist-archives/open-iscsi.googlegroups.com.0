Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBEMXW37AKGQEDU5XRLI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB0C2D08FA
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Dec 2020 02:55:30 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id t127sf6199833qkf.0
        for <lists+open-iscsi@lfdr.de>; Sun, 06 Dec 2020 17:55:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607306129; cv=pass;
        d=google.com; s=arc-20160816;
        b=pn5Z82mBSo2TuTqCHMx7VYVYeIl5NEugW+p7sgHpFN6UuvePdwBLq7EQ+iZNDAxt/7
         ITZ4+8v55hnytJEsBu222Q7I9gLnGYYaHkDcudofxDVCp5NyKLOnE4g5t63SAarRKzCY
         YKCi3+v7FyeTycm6ebiCesFtsfYbGGFw40a4Krtg8uP2ftUYkIRv++eK8oHSan6apy2s
         mI5tm2DtxBBXkyMyc1f3sxYxygnWS77NwOfvWK5gtOEMpOqWmO7Y08wUC8xdAn7KXWuQ
         9hhfMyC/QGD8z3FC16P/WCIwqnHj1zJGHac1bjnoTL7oP0MBxNNFD1G/n1jx2i0fBwZf
         8E9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=k1P76+nOy7GFfk7lpbM3dPh5WeCoSSxBNNmEobAEXE8=;
        b=vUGQfx8YqxVvSFZhNsrsvLx+MvohdLvrAMyIXvG9kFEBYCPT1ZhLZ0Bgx9ojTkImaB
         U/30cVYbmGz0FcekATFM5qYkRkAQe0wcnlKhtERFZgRpvH9m16c3Tia+jxWp1YTffByt
         Zqp7ms5rzyJPkIFlbBy8hbiNWnF5JdyONL1pFlmjuJn483N3I8eVS5/BJcLlY3esYBOt
         2f+YOKa9itt/DT/zGfX9DHML2xYkVzmwitzsGlgi29DwhWwqLjfErN7h9xhPalOdzbME
         ZhZRrlxujw82OspoEyLj4/4uFeU2QW8ETVgutc+RQn3oCpGwE7s3jXU365PMd7RT5/2e
         iJBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=k1P76+nOy7GFfk7lpbM3dPh5WeCoSSxBNNmEobAEXE8=;
        b=hM8yMHGl2ANPBreJTc9OUVbQKKzsQH4MZEnl5xwOxY4omRCS9TaK1Z957c4V6fctH7
         8hFWO2jp6oIxr2gQm1TzG55tn65JI9/+8fvRf7ffRLz5olmVxb8odCTjIoiBI8Mi19E+
         vYdpUxOOYNkkcMquPW0Rb+yjNHpDiLNTlolkz8XN5Z3VD7EI/ERvaFwms+4qyBR4uIKa
         zIYgmw7OtVsT6CSqZBpVCaFNYY+p2ZqAUpyj11k6hQcnDUqlMrutozYmiCEr9jsaU7jq
         mbZkRCg4JHBecWxbK6aM/ldzcQu2DVu2FfDKLmOiQfOzeOc0XAtMh2sQTRbshvBeZRn6
         vOEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k1P76+nOy7GFfk7lpbM3dPh5WeCoSSxBNNmEobAEXE8=;
        b=rClnuR1T21pjoPs30IubIpPGnXByNBGoBBovcFT9EklvXRtj+GKawRr8zXBplowjk+
         X/ogsCtlbIl6i6Cz3X9191K1AFhn/ah4qrx/8mSgG3r+0uLumqyU/6gpgZ/0vSUMZ/c9
         +/UrJwGB21A77AWlCUk9EDQlRj5xeaRlhecG+3NXajSiIimbCHoq9ku0GMbYrLe+KcrP
         uaYQBqT1LpHih0jG9NfHe762lkrZ8iuReDHzhZCDe+nUKrO4baxjiLj0ZfMLvb8qYQxu
         QsJhpoQ2kg4XaIhyABq7fkGFaK9kb5L0/bZ3Z0MxxyPEu7Srnv3u9pfg1FzTSSEQBZ3b
         +JtQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533qq92HNqsOVVS4Ipsl9KLq19CgYbOSX0CBHKU0/vJKXoDemTgh
	M/lpe7j77XnMS1Gvb8Z/UF8=
X-Google-Smtp-Source: ABdhPJx9898qHKTvh8jY3KVGdYWZ9CjEdkyipN3wRZC7NrrPuIojiHU6SoRxadB+oWEZ2AcBAJYAJw==
X-Received: by 2002:ac8:46cf:: with SMTP id h15mr21979982qto.99.1607306129272;
        Sun, 06 Dec 2020 17:55:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:d607:: with SMTP id c7ls3786013qvj.4.gmail; Sun, 06 Dec
 2020 17:55:28 -0800 (PST)
X-Received: by 2002:a05:6214:2cf:: with SMTP id g15mr19071025qvu.7.1607306128922;
        Sun, 06 Dec 2020 17:55:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607306128; cv=none;
        d=google.com; s=arc-20160816;
        b=OxFSOm35VNZU7aQUhu2IYzrm4k2qh85RjA6o9CQrili7pyrOci6RBF1H6ruCGnpEwu
         65VNuAaEOQ28rCa/6mFLSRqIbZDSIAJrgytJiAdXOvM+UfDiFxTLBcF52FjVPdJ9YCv6
         cZPSClcqCPWmQO2lsL5lWBOePbhigWa5FkiCEK2MC2lqLxtBmWtdE+uzqut/ETMbP4ik
         hirwztjt2X7xpw4oQcnLsWMECuKAwVk37c4MZpkPGANezK9ZJyP1Wk83zsbxeAPHsuD/
         vAziem7+tN7Wkck3QjBwZSRTVLVdvRgqHH8nrmJ0e4H7IsP5EYZTrUSIq8vRXfdUG2Sd
         OeeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=G4CanwymGh/kRaaTq+8WPBwQZYqFHTcPmm2d3Gyv54c=;
        b=J0cbJ/toPH91HN4EktbUiBMbxztjbNzIcApa8RE21nHa7RnBTxA2TR6oXKBupSjqWj
         GiVR+dlnZeZfHmNoLIu/GMV4ijFjEf3NBUrhOeQ4FLsl8FX3q+BMWTUw308L4RCv4Mf/
         KUWSRpVdeKJlZRSUM/JLinVrTXJjqCkpUYBQDcG4+S8gIhaJtD5U6mzypV/UFME0Qrgz
         nN6RNIMDM66gCYIL3BbtwElJrPLiL9ELcBl0SgjKt/pvVk/k6uZKU3P+430a/8dfsSO1
         hChh1MEVAlGIWCD29eSSPFSSxcAEQyXhajwR8zTtiyh3NSal1Nj48xAuT3dRtsxF3SJB
         +rkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id a8si748606qto.0.2020.12.06.17.55.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Dec 2020 17:55:28 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
	by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4Cq5w83Y8JzhnYp;
	Mon,  7 Dec 2020 09:54:32 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 7 Dec 2020
 09:54:48 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo
	<wubo40@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 09/12] sysfs: Verify parameter of sysfs_device_get()
Date: Mon, 7 Dec 2020 09:54:07 +0800
Message-ID: <20201207015410.48488-10-haowenchao@huawei.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20201207015410.48488-1-haowenchao@huawei.com>
References: <20201207015410.48488-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.104.175]
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com
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

In sysfs_device_get() we should firstly check whether
devpath pointer is NULL before accessing it

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 usr/sysfs.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/usr/sysfs.c b/usr/sysfs.c
index 8d37c69..7f26572 100644
--- a/usr/sysfs.c
+++ b/usr/sysfs.c
@@ -168,9 +168,11 @@ struct sysfs_device *sysfs_device_get(const char *devpath)
 	int len;
 	char *pos;
 
+	if (!devpath)
+		return NULL;
+
 	/* we handle only these devpathes */
-	if (devpath != NULL &&
-	    strncmp(devpath, "/devices/", 9) != 0 &&
+	if (strncmp(devpath, "/devices/", 9) != 0 &&
 	    strncmp(devpath, "/subsystem/", 11) != 0 &&
 	    strncmp(devpath, "/module/", 8) != 0 &&
 	    strncmp(devpath, "/bus/", 5) != 0 &&
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201207015410.48488-10-haowenchao%40huawei.com.
