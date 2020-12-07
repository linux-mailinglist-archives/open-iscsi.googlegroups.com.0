Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBEMXW37AKGQEDU5XRLI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B80B2D08FD
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Dec 2020 02:55:30 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id w15sf5842064oic.20
        for <lists+open-iscsi@lfdr.de>; Sun, 06 Dec 2020 17:55:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607306129; cv=pass;
        d=google.com; s=arc-20160816;
        b=ukZag0YH/f7D6MLJDvFyT10WHAANNR27uRVpJi7BYR3yf/WFS+Dvl6N1iHaDM4hsNP
         MbKZGHUKsOnM21cexH1ESPPvGKKyX/ygkUfm3KXCccqavCXxasQXRPhC1frNApDk73Ja
         I0S8gyb+UUX2+jVwfRm3V+yjmhedwhEuYXzfQsrtcqGtMYU0Fngm3F6MJdzl2kYWcmDF
         AqMzHa2qTjtgBvn05QU+rG5z1eC1eogVPk2jMMAjBg6ooAIwrW8ptoM/+760VvxiHdLQ
         AI5zTsOE4HhA9t8yrJj7e3OO/vSJC1iBWiNh1//FgWZBrsfAowNSbD+z++nnr72x8mxm
         xkuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=xKv8pUorubZIAcBp3d77qleD3fkB47EQUzpTpYPFXBk=;
        b=t98WJkMISeRhSwJVYntgvFVm5UegxHPGB+8hvQ7/DmtogWRzhuVBVm6DY55PH6dI64
         36aruPVjC0i+loOdpL3oO2Y1eZ/97HQIUs7qmxcq4f689qSUtpDPc9h+FRMfXCyeLmse
         SOktuvfga0vL+9t7gyUcKQWi6TsuQAWf5poj3/c8E8IRdaDcx7jIUQXUUgeQjaHH6vgW
         Y3L7FyMgRYVWAN/9/UtXMChYJEIBL3YIYH3eoBxDRO8XEFXkFgDm7dIZUSSXxnjlV9ea
         R4FXEJLMKOVFLyPxTY3pZyRLQ2GKebxGbU/tdYVoqIx1RYzATw9ODFMgQ1QxvIoilzAq
         RIPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xKv8pUorubZIAcBp3d77qleD3fkB47EQUzpTpYPFXBk=;
        b=d6Rrt6a25VvtTWYd25Bq2O6RU/toVWW1k1tsne5jpY4rZ1AATaqKG7WrMnik1b7tGv
         Hcwiyn0z61ANMMfiWw6QS3d495xmYkKXOlWCByG8IahEFAGrCVNIf1sDUIsbp8s6Roj/
         y68F829n0TyQTeXJrzZln9d4xyGJvChdwK5BfeW2yhQHN8FsRxNLK2h3O5+XEexokrok
         Uka5+OQf2V6WMAyZmLnZlYpLa9WcHxcA9yKyq5IUmc81WPVYEW0TAlSoLjMxDtHETZsL
         oWXVoDCwst26tprLwsNyYK6z6k95qslyy4L/FIKCDmF4fJ4+HmwWRX389K0Qyc+kYVvM
         pg3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xKv8pUorubZIAcBp3d77qleD3fkB47EQUzpTpYPFXBk=;
        b=Qq5JyxUXbrfELXjiKbA601iqteiEeL03vtvIv+gySMkXN8pvWdKDBIfXmS5bw1FN2L
         YzTV939R02E++IF4+AKWzproIzkpMCbAyqhWzLyG+4YZE3TIJBTTcUmFrIUcQfCjHD4E
         1UQuvdx4YB8B8Wl8KkTHsgoeB9AkVU/3ier+vQRRgMOnLWl1gMlhmax7JIw9eCGpUdpm
         wUV4f60H6c5iAPZhttYqiIZLCQZRSaVVEOa6jdBW7EIZw1l7Ofyme1DGiz35aXFolhgS
         kZNFweaMAnFnaC72FUf1ZzQezaz5YwnY8thUa3ehDA4bQEb4xrtNO2fCJ3cDavf94pM3
         tE/g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530wLp98t0b39GcmZC65ofNF/a7INUF4lNa69bnb6Jmvyj2aUnFT
	sxmtD6tR+/pgbz+rRBGo6J4=
X-Google-Smtp-Source: ABdhPJwphGVrH/V3zs9tc5If3BxFvduPs2RoqEf/Tgt5/feF+e0Uriuc9BFy5+h75GpkUS/y23mwdA==
X-Received: by 2002:a4a:b5c7:: with SMTP id u7mr11049672ooo.47.1607306129353;
        Sun, 06 Dec 2020 17:55:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:1e87:: with SMTP id 129ls592641ooq.7.gmail; Sun, 06 Dec
 2020 17:55:28 -0800 (PST)
X-Received: by 2002:a4a:a785:: with SMTP id l5mr11219012oom.83.1607306128885;
        Sun, 06 Dec 2020 17:55:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607306128; cv=none;
        d=google.com; s=arc-20160816;
        b=CChBIiqP3KuB0ky8awIZSQu/3PiwEW/GiXWIOdIESalCX+LDdaVFLtDOkOhe/eE+62
         9Ul2IJtflwsZc3pIwXO4nJyBt4rF+FmrV8PZRcfpFz7re2ONH9s4eHjn5j2LSQdjeOi3
         NdksjqaliyIDrKwj6P6rUmkxocQuDStefE5EXVbzxEhh1q5rALh0DPiiLbuMOWgrGdQ2
         PGfn04dq0t3QHRR97hFh9uFqaKDv5IaZeC1Dczx/cK4HN6gu/6GLmdQrUpnxfcpl3hNb
         BDUoOmmXeI98pSVhI7BIX1VFbxhQj5D/TLjMAOwXG4RHXH3XXuUVf7OnWiaBK6S5sPzR
         jxXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=so6NEra/xytnISNfpEEaXtssUS1pN/REy7v1F6ZbAY8=;
        b=OIAtva9LrR6dYFpfFfe76BxkzaOXhLCEGJiaBnTKsN5qgnQXhya1lkvIoAo1vMSRZ0
         21Pm1GzqTduysVRuSvGFSf32nnm1vk8eszsxDF+PZ/x7CyEKw1WH7FV7v81VeBG0YITo
         Tl7ukKnLWMkNBIMUcFJUPhLLSvggcI3RjB/JVFGUMGZ5+EJHN4n6d1pXlwCoHnd8XLdd
         P9HhSx6HlWhayUMPBgT8DG4R9O2x1klqo5zYaM/rZPJTRmG1+uMuyIpaFnOVsdPazj82
         YgVRdzVsjsGJFgrtk3ghj8KH7C40RhtF21xtOEchhrokFVVsepUPrQYOBhf0AMp50Z8o
         U92g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id l192si704035oih.3.2020.12.06.17.55.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Dec 2020 17:55:28 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
	by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4Cq5w83MLwzhnYm;
	Mon,  7 Dec 2020 09:54:32 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 7 Dec 2020
 09:54:47 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo
	<wubo40@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 08/12] fwparam_ppc: Fix NULL pointer dereference in find_devtree()
Date: Mon, 7 Dec 2020 09:54:06 +0800
Message-ID: <20201207015410.48488-9-haowenchao@huawei.com>
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

If strdup() returns NULL, find_devtree() just return NULL to
indicate this function execute failed.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 utils/fwparam_ibft/fwparam_ppc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/utils/fwparam_ibft/fwparam_ppc.c b/utils/fwparam_ibft/fwparam_ppc.c
index b5eaa00..25d4532 100644
--- a/utils/fwparam_ibft/fwparam_ppc.c
+++ b/utils/fwparam_ibft/fwparam_ppc.c
@@ -76,6 +76,9 @@ static char *find_devtree(const char *filename)
 	 * /chosen.
 	 */
 
+	if (!devtree)
+		return NULL;
+
 	chop_at = strstr(devtree, "/chosen");
 	if (!chop_at)
 		chop_at = strstr(devtree, "/aliases");
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201207015410.48488-9-haowenchao%40huawei.com.
