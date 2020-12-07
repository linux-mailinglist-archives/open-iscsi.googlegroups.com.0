Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBDEXW37AKGQEQ7ATPMQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5822E2D08F9
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Dec 2020 02:55:26 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id q13sf4904635pfn.18
        for <lists+open-iscsi@lfdr.de>; Sun, 06 Dec 2020 17:55:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607306125; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZlKtU7z7THGwbYtigVIrm8bYrkg79ErNmEa7L06xt/Ee7POcPsG9eBovT1Ee2NMvts
         d+wnJDqjM4BLYnFoYWC4jPooGYRsMLweqCsPZc5qs7cJAd+4qnb5TPQAq1hpkF+runip
         bMguCA9p0zm/vOEV6cl3iGuUlOlPDLEalB4sXBEGdcK90M7MAKPzDj/OSo1q8/JyrIYu
         +LZ0ean41IL0yYSpFsTjWlkrIkxLIWPp1W5LgTzWzwlCXAb/Csb20LJlIQBfqi1rei6R
         TVX558+zgvCHccJPvottceaHzmP0zKN+9BJj6WTKx3VrktJYm13NX25WScLRBzyFW7O/
         Ap9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=7FAPwNi47o8BSZ1GvlacDWZveV3VjeFUb6QAGlTbVAk=;
        b=B7cXBtCTCSFuvwmImqAvX3Nnt+davyiBC1/yhaE6jHeQxKagLqk5pIZAZP9k2byJHA
         e8/x6rGIbdePi0GhI1Zxz0+q0O+GqYQ46ORnc5K8h+E0jyokzEtVToTvSYGZ+1w9L1Cu
         LlKxzFE3UWlmGZAIdczAT0CdO9NbGk9+XxkozT2eeQw2/8T7MsURFIgmJPcO5wfKkcel
         2U4/CnEeRojMEDYnPTP4JHPJtfqU0Jno/y9feH4M1opLeYpCmcz2oJ52HA68SSrZzQJX
         rMQcmJsVVuPyHP2XFqFuXH5EyARFeDuhPAFLYahJ78bH3q7HT8gCqYucpSoO8miZ9KhU
         bHsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7FAPwNi47o8BSZ1GvlacDWZveV3VjeFUb6QAGlTbVAk=;
        b=ihsPGSFIr6Wu6h6gN0OFirJxfNMiCz++ZijBSIi2bviXchOQ92FiEnL6oH0rS4ea4m
         mB3J6AmgfNtwJ5xLBiQ/Qs2gTLBkT35pc1jm0jR713yp/zxfwKc6n9EzKJqd9qzPzHSI
         EoQt+ebjuvbn43FtvYR0LVW3ZNmUOd1Nj5fJsLzgSJjJV1wz1oJad6IinEtLUwRqovOQ
         5pR+mrWC5jUEkAx1amDlEiVfGFnLocVs858iAdYgCesFRUf56U0RztCUGBeoPbUa+Ea+
         yWrTFRTIW/mX/AM2peGbw7t9htpFGpvFZM20ivuEV5ay/TA1q8XAOfG5oHuWwI5dp7UY
         T83w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7FAPwNi47o8BSZ1GvlacDWZveV3VjeFUb6QAGlTbVAk=;
        b=PWsK9R5qrlQy3pvsm/OJW/1487y726Gc9PBebO8sr+zDyOuqe/sz1lVNpFIo1bvf9+
         8Q05nr6W7MgImOB9i7Xz/V8gnkAUtQbw5velKQNTFuUwoyfhvfT0ZJWc2RjwKGrWQ5UE
         7jfAUQr30rROQI06EoRbNXTJYmuaMLnXKJ3c5+qnIsnoPzSy55POtQi0kPGjsme6laUe
         Xe8YMh0fvLPDp7YDrWCZluhwVm94W3CggzVtMV5DX6tZ5XEYz3dbr9JOJlG6+ku3z6SY
         ESadH6wSZ+pjrECX/aJu/y3XAeDinrXYEKEMyR1Ct/eyyaXlTyagE4eN4tl6hTUjbhup
         TL2w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530G8NiS6AinnNxswDh9vk4YkgdLHyd4yL+1GPk37+LcyiH6FxNG
	SYXRjNhGwY6yYrc63B9mupQ=
X-Google-Smtp-Source: ABdhPJxnLPMfHy0K1hcU0Rr3Z2d41hee9sc4VAy2dHTbdRHDU7ew7FMM1TfWT2YssNkhVMVwacJkHA==
X-Received: by 2002:a17:90a:c588:: with SMTP id l8mr14190826pjt.147.1607306124579;
        Sun, 06 Dec 2020 17:55:24 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:4b61:: with SMTP id k33ls4987168pgl.0.gmail; Sun, 06 Dec
 2020 17:55:23 -0800 (PST)
X-Received: by 2002:aa7:860b:0:b029:19e:2827:93b7 with SMTP id p11-20020aa7860b0000b029019e282793b7mr632175pfn.22.1607306123850;
        Sun, 06 Dec 2020 17:55:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607306123; cv=none;
        d=google.com; s=arc-20160816;
        b=T8GcAR4moAbQGuBaftBOJAPAGRIULtyjWy+wNDUpHgow6+59M23Cq6KsT9irUgcOcj
         o7EuLcz8uXuUrDWc3f7mSlMBD89DgLFMhGLVBtGNNLVBifbVk7VUeqmTgAAwe5LVNEAG
         98AUyF8MVdFwzhZBTBZK6hHQB7dUvooPDCL5cNWDE5ienFFRHKgoSBIVZuRMnxrYs1wV
         wWSDwgIwbc/I3cOYGNpYUOkrf6YfhW78DEl/k4PhdSfFt/41MLUGodAKgoF+Qt7K3wWY
         2UDGt3hFPsVnLZwjIjmfAy1jCvQtfS/+VOT/IMJ0WygIHNbIu7sOpMZrbM1VIToLpUcQ
         4cmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=uIkrBlOAgJEyU3itHKFMySfJJlo2AmZgR3xToDqJF5o=;
        b=I4e3vzuF1tsSzyZ/hjdrXQkWQSekExy9M5F1XpHRtlWJS2RgblPQQoqd0wsKEjovJh
         LfY8Yoz4TpAp5jljJlV/zQ+KGAhwKG02nMxsBFYz+X7RGL619zjJCnIN8tqOTYLk422K
         Cos/U4y56Lfa7+zQlbUbxkGjBSTW4Tl0kvHPBnFfj7dBuwtyiyzn59cZ7VlNUEuGtQtA
         jlgCvbmyeY5dR3C2ngATrF9UIZW9VBgmm9AFAIKcNZ0WDSYtYVBUY7SDNvJsbcQ1c7fB
         eM/PGXxK8sWi6BBYl2a0JPCIhT3qfENNovqDaHdi9xf0Zy26471S3yHWrUAKyl0+0ODf
         IPNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id a8si792037plp.4.2020.12.06.17.55.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Dec 2020 17:55:23 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
	by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4Cq5vx0bBrz79TM;
	Mon,  7 Dec 2020 09:54:21 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 7 Dec 2020
 09:54:43 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo
	<wubo40@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 02/12] iscsi-iname: Verify open() return value before calling read()
Date: Mon, 7 Dec 2020 09:54:00 +0800
Message-ID: <20201207015410.48488-3-haowenchao@huawei.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20201207015410.48488-1-haowenchao@huawei.com>
References: <20201207015410.48488-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.104.175]
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as
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

System call open() might return -1 if an error occurred which
should be taken into consideration.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 utils/iscsi-iname.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/utils/iscsi-iname.c b/utils/iscsi-iname.c
index 0f587e1..834352e 100644
--- a/utils/iscsi-iname.c
+++ b/utils/iscsi-iname.c
@@ -96,7 +96,8 @@ main(int argc, char *argv[])
 	 * uniqueness properties
 	 */
 
-	if ((fd = open(RANDOM_NUM_GENERATOR, O_RDONLY))) {
+	fd = open(RANDOM_NUM_GENERATOR, O_RDONLY);
+	if (fd != -1) {
 		e = read(fd, &entropy, 16);
 		if (e >= 1)
 			MD5Update(&context, (md5byte *)entropy, e);
@@ -141,7 +142,8 @@ main(int argc, char *argv[])
 	 * good as any other).
 	 */
 
-	if ((fd = open(RANDOM_NUM_GENERATOR, O_RDONLY))) {
+	fd = open(RANDOM_NUM_GENERATOR, O_RDONLY);
+	if (fd != -1) {
 		if (read(fd, entropy, 1) == 1)
 			bytes = &digest[(entropy[0] % (sizeof(digest) - 6))];
 		close(fd);
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201207015410.48488-3-haowenchao%40huawei.com.
