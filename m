Return-Path: <open-iscsi+bncBDO7B5X3UIBBB3775PZQKGQELDL24QI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C2E192159
	for <lists+open-iscsi@lfdr.de>; Wed, 25 Mar 2020 07:53:37 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id z62sf947787otb.0
        for <lists+open-iscsi@lfdr.de>; Tue, 24 Mar 2020 23:53:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585119216; cv=pass;
        d=google.com; s=arc-20160816;
        b=vjbvDtu3G5hW6tCEn4mi7WDM5IVyhTnVMF974n1ffQlkOKoW2tkZHuGOoYLtIhtAtz
         reoJQpf4QNVyFLRQaQMkYk7SL0Pgf9jZiinzRkFkqMXfMh9OWxW9AA9ezi8p7lLnmnl6
         mUmraYQtGLH86MpZbtjJMi3rztxv0VEgwgFQPXZYb45h7NFzUDJL82kGEBiYo5tMoq52
         /Py0HR26099gC2Gf98Nh9d5moylJ3T4uKjJPKM9Xhy20uK/u7S3ijB1llSIx/U8ULtLY
         c4lBtaY/yDcmQnnXJhvvG+In9sd7m8ZMJ/8vuDEy4U3EyE3h0Eymi+i4vGAW3JBmW6YL
         3yZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=TAYMkAscCIlReljimyd6Zx/i7r3dKwzfgsAmOPsHRw8=;
        b=Mp+LeEWX2zVWyd3Gmyw8v4ORa3CHDhjKvF42QXMnIvjFXra4pI4IBzOcRTd2Xl9j+u
         SC0v70Y3whX8WyAjfUVPIRypH+JkkLkF3lJ68LTuHKvO4VxL4VbhnhQEjAoN+Ujh6L2R
         Z77zkSXNYNjGme4dAdurrv9jxW3XUQ9ahbAaWDtZw6H2r+ehpWrCvLNvE4InupTrRzfR
         i0gAdPKaQCuc5hNcETn+pLrqOWE6Iwxehmvp3HrLhA2W8uWAAd/8DJF8kF/mv1tvtbTR
         JaWaMzr8UjniTPVDT1DcCN1mtAPo4i/+1MxYLaPzUH9e51X9F+GWg3Yi36nXGXp7hXms
         7eGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=TAYMkAscCIlReljimyd6Zx/i7r3dKwzfgsAmOPsHRw8=;
        b=dOS7UPvrDdJc2fM9EyRw9uQJgJARW3v4w39dZ1pjC9cerqWoz/4QWY3qbBmHHqxszr
         tSaDCigkjBHnHwjZMqQ/NUujBQW9YABSoqjZTDi4K6LT8LQBX1VmjGRdt85lQe9D8BOf
         28iAcPVD5Bmm/jPeQzm2SBJhx+hq13spu8F477MJWPnVIySs/pOkwTdFMg19eU3MdLiG
         0mPyGqEqLx+QaKu6lqoMajz9zzW+HgRlAPlnDAbGflAHFDVEr9ritjOPiheHRphSX9lO
         P8/d2Xwd60WkmHjg3bns+I16406b33ilZ/If0yoIWtvPLMn6TSxPen3z6JAdKdMwRIyt
         VYNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TAYMkAscCIlReljimyd6Zx/i7r3dKwzfgsAmOPsHRw8=;
        b=Sg76gcxQAa0sUWiNxBmK+S575pNMPc1sOUXhISyTAFaXsnjQ8Y3Du8O8W1Hsd2My2x
         /sPB5Dp0O7dS0qptTnbPuQXi6Ex3Zw1hdt3bbvH5uOTLTLDgQcHDt4ayLonEOfILYyr8
         6MkDixbPq6+OKmOtvhZYKUABb+Xl594yslhhH3pqvtQh9S56nMOMcRIUAPEPKmhCY8IE
         iHVwraxvRsbAo4QOM0um0M9UBR83pK3cnreK1MzWARTlmcgbPSxJW3DXGVuVYvh+QXF5
         ysVr/kPC8XyQELU3474hvmXGPqFvPb/A+5buUKWbfLQhz1p8urK+o535L5oQQgVleEeu
         UlaA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ1mV3iRgIrgp5Xm44qw7IV3GeBTkkGZ2toMawQsBDpr/ouE32tN
	GA10//ewdH2uCa6HM6W0NQE=
X-Google-Smtp-Source: ADFU+vs0e8x1sxTjSl08nAIDsIv/k2bMScXzf3V1UG+Tlb3x/xAc/UW4z0BEk/UhanaWPqhuJs2ttQ==
X-Received: by 2002:a4a:ba94:: with SMTP id d20mr632915oop.36.1585119215868;
        Tue, 24 Mar 2020 23:53:35 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:cd45:: with SMTP id d66ls254692oig.7.gmail; Tue, 24 Mar
 2020 23:53:35 -0700 (PDT)
X-Received: by 2002:aca:2b14:: with SMTP id i20mr1471484oik.79.1585119215514;
        Tue, 24 Mar 2020 23:53:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585119215; cv=none;
        d=google.com; s=arc-20160816;
        b=WcHWKTF88gtq2o2AqMX8LWk41glHp0Yw+rp9T08Y16znxZ1IVfBA/W8bf3wtYf5tCl
         vaE6NNBVqh4xXO2krpcN0//MVSZpYcBu4qZc/5BVDfRGpLVLuENK8g6+DcojOQn2uyRq
         ox8B2mBm4H6v73DTPZwmda96Bx9E+XfJ6wmuS86HhnlcW3YhRovMivO4eO1gaE6mfLUH
         MnhGRT7L2SnEXflXqROvbhzUeY2hmc5D4oVqjgsDKDFUGkTNGt6dbZD1fI9iSFqhyLXe
         c0v/YP2agf+SpmMCiOMYPk811BmK29BC8s3gedUv/JlXl/i4qps0GRqfHHmlLY1G0h6S
         pbgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from;
        bh=uZxfmm9FmbSpmpSKB1pXdXM2hrdOUCcIrPpe3QDGEiE=;
        b=GKmC5GFsMCcdQ0w4Bado4QGBoNxwRwwWI6MarNRBGq620xMeQW85gsK1rywrsqQPbm
         FXfkibd3Zp/HCjTZF6VILNHrNrBZb5eWAZh9p68M9CrSFtoC+lKp/Al42IJUJDz0GXlA
         AQNfJf2WsdSgEn06LXSCKqYjeacpqvv1R94z1Yau/qHVTQ7xsmkosIHbcdDNWCjXoXum
         w2mKkomAMgbdyuJJQkco+CsTxwPx1E9+tue+tzX/yqQh2RCwXlUvb+ZI7q2bcWZhbfup
         lDPKp2hXJ3D9li50uqQ/fcWBb+/XMkoRqj72m6fBi8nH5bw0hAV21Jg2JXq84IOg9AQr
         yQJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id t81si1307081oie.5.2020.03.24.23.53.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 23:53:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from dggeml405-hub.china.huawei.com (unknown [172.30.72.53])
	by Forcepoint Email with ESMTP id 4E5993D907617DFDD781;
	Wed, 25 Mar 2020 14:53:33 +0800 (CST)
Received: from DGGEML423-HUB.china.huawei.com (10.1.199.40) by
 dggeml405-hub.china.huawei.com (10.3.17.49) with Microsoft SMTP Server (TLS)
 id 14.3.487.0; Wed, 25 Mar 2020 14:53:33 +0800
Received: from DGGEML525-MBS.china.huawei.com ([169.254.4.199]) by
 dggeml423-hub.china.huawei.com ([10.1.199.40]) with mapi id 14.03.0487.000;
 Wed, 25 Mar 2020 14:53:26 +0800
From: "wubo (T)" <wubo40@huawei.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James
 E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen"
	<martin.petersen@oracle.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "open-iscsi@googlegroups.com"
	<open-iscsi@googlegroups.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
CC: linfeilong <linfeilong@huawei.com>, "liuzhiqiang (I)"
	<liuzhiqiang26@huawei.com>
Subject: [PATCH] scsi:libiscsi:Fix an error count for active session
Thread-Topic: [PATCH] scsi:libiscsi:Fix an error count for active session
Thread-Index: AdYCcb2iexxjeQOuRpOqeUuVmQcdfw==
Date: Wed, 25 Mar 2020 06:53:25 +0000
Message-ID: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6916A28542@DGGEML525-MBS.china.huawei.com>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.173.221.252]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.189 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com
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

From: Wu Bo <wubo40@huawei.com>

Fix an error count for active session if the total_cmds is invalid 
on the function iscsi_session_setup().
decrement the number of active sessions before the func return.

Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/scsi/libiscsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 70b99c0..b7158eb 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2771,7 +2771,7 @@ struct iscsi_cls_session *
                       "must be a power of 2.\n", total_cmds);
                total_cmds = rounddown_pow_of_two(total_cmds);
                if (total_cmds < ISCSI_TOTAL_CMDS_MIN)
-                       return NULL;
+                       goto dec_session_count;
                printk(KERN_INFO "iscsi: Rounding can_queue to %d.\n",
                       total_cmds);
        }
--
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6916A28542%40DGGEML525-MBS.china.huawei.com.
