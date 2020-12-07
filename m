Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBEMXW37AKGQEDU5XRLI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCAD2D08FF
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Dec 2020 02:55:30 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id t14sf412682otd.2
        for <lists+open-iscsi@lfdr.de>; Sun, 06 Dec 2020 17:55:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607306129; cv=pass;
        d=google.com; s=arc-20160816;
        b=iTdDhXvFJeLxUnADxWsGhc3LpkIbLOhz16ndakA6WtHs4bMjKLUhebXCC+DmCXbr5Q
         c5RUVov2SEZJeRkYNFa7l9VIC1ZEeitqR4chMTnOxx84qe4Xpy/fVVNV7J+2SHDaEn+j
         Qp+Kw39HnFDRhtZmlKqxDDmqEuzHsvgPpMbbPMBJp3eGyhXsNAGan9mDIW4cS9TOGs3Y
         mETCCoe2/rzH2J5qr3iOj0m0lmz5h4iyVC+hVnhmBDIT2/CgzJJPdFwtJJaiZb8dvgWw
         Bm0xIfKGrO6eiBv2YYY4ZkcSlzOGW9Xsy9q66SyaMSzUErsHxpjDD5hREEU63v2kJyT1
         dH4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=ckVKkJtrYQaHI5zXjf3aGiLUzdKov4+H5Mjkka5BoqA=;
        b=OMjNfrtlh/MnTcXDFcGs+9PZCVaGGFOAwdqXpgD2bq/XPAq7zWuj+r1oEVm1sQZTu2
         Wq1DHKHsQ/bOl2W/aRjRmdNpJGc+R92HvSPkr2jVqpuvDg+S+lRJJ+WONkYzrpcryjsG
         s5clrz9GBDYGjTRir7T9SoRW8/iK4lpdT/FvtT9h/Fq0VTjDwZRbSbPpvHpUd0Zi+92n
         5t1+KpaxvmLMv4ckSvwedcpoRzRz1cC4MVcro9YzwsMMsmIKMnD/yLS0GwbqqTwyAq/M
         ujz5og/mxKgk4AzmW9vzQbKcUqnAKlbENEjfYFpiLAJa5gRgqDK40EqV3vdqIcbO2At6
         VGDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ckVKkJtrYQaHI5zXjf3aGiLUzdKov4+H5Mjkka5BoqA=;
        b=opM4QaRmGUhiGGfNdgNLTta0puoB3JlR/Z69jb9ehdmEAjQlxbp+3joplGjBPiXKvZ
         j7eqRpH6J+/RtTkxU8YrbVGbNzZEDyjDI+bkoanw4YFbx/mXnY6Y3gSvL8P0sbas8MOL
         XtnYh/YO8s+o4ph7IxEIh/m3jgPiWJ0g3aKONR1zNmFMM0szU4RfNpJt3RUviiyDPqBI
         HvH+HrpMeyD/UTXxy6dh2F6a2rzjZOAaedibZMhx32LVLAESNlliQ0/inwxwOX+hI83O
         SQ+k4V1LiPFgCtXLBC2h3FzO3yba7foFYPytzjPsj2NgMMc8ZH5+5jDVoXLBz0Ye72IY
         344Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ckVKkJtrYQaHI5zXjf3aGiLUzdKov4+H5Mjkka5BoqA=;
        b=qAcZEq4Q+fAZgTl4Ws5Auuyp02eR2CZP4ORKIPg6KqrcNg6eZUiYcL33+9AQHOBuXV
         L7dk5VvvR1ZvDRWYsk/ivhtlo7WqjAKVlBHNoMG7r091nTEIGgCeOFhG94Z2FNjdw7QB
         r77tUpLal/YaOR4qd/8DUIfFW4oRQfTbifFmnI0uBS83w57KtkNWm0enrDetWh8cxpTq
         PTUfDw63v/o/jmabOYEnXpjYiCOghZk8Gmk2WHwLbYsaT0PSDNf3djD8AXeTV7RjH57t
         /F2KCXH2HyHOOjYaI0VVb7FH+czwGGxYrLdTVxKBsQp3pOh4XVu7XfP1l0sM0+FZt21N
         Kp6w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533g70/2sR2MweKtJWDD2OXyQKryQDHBZSeXA4rhJe62hPN5fS++
	lsk89sXRX+RyDx5y7KCnoPs=
X-Google-Smtp-Source: ABdhPJycMuzhR10phVGI1+R6GmTPW0AAe0xJM55+0K2bBayu8tTJuIN/YBvNrq+Q1E2vHlCAPg+lCg==
X-Received: by 2002:aca:482:: with SMTP id 124mr8579030oie.117.1607306129745;
        Sun, 06 Dec 2020 17:55:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:a709:: with SMTP id g9ls965453oom.8.gmail; Sun, 06 Dec
 2020 17:55:29 -0800 (PST)
X-Received: by 2002:a4a:a3cb:: with SMTP id t11mr5383816ool.30.1607306129020;
        Sun, 06 Dec 2020 17:55:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607306129; cv=none;
        d=google.com; s=arc-20160816;
        b=HNQ/br8xcbAaMWIt+0EBClthQh38N8wM4YyupyCbqfyR+8Vdc8ZAvA6a16T2+p36Mu
         9cVPb6X2dWHOGl137xhnSWEx+1sDyko0Lku7EQjW5uVJbmi2RKdzYneZEN6cxpC176hd
         fcMCsoDd0ckopWwzSFgrHn/ydCDLXWCwRldtN0YHBVO3vyptdfJQfjU3iLZEoHOFciMM
         5m8qZ5T/b2gmJ7UBLdAw6JQ9oIoPT9npbYFfoyWl5aVOfBna8Bn/V8V2rcxHbwD2nVgV
         lDQPgmqsATY/OXq+YLGxGAUiMibo5Iu/5XoXdKSwJrJUo8lBSyJ10Wskc9ijvNXiyDqi
         8mJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=CKHZSr7Ai20/2Fz8KGqsX23qCGV6Eo0HNfpRFnIr1vU=;
        b=gOkmIbD8FaZur5/zVtuEpXnaPHv8qWC6kjnmiN+/livZu1PVqhgT/5LnazLbX/TSvX
         tYkTxOlp8euCxDk0MOOzT9upQdywNdbN0SakvwTpMvf/QIcuvKGDyp3Nmmo1WQGFwROG
         dk9OTCrqgAj6AASCzhjIMLnolRfQGZZtpbm0qh5wzHcGsOm3ymiXqglz7pYluW5Yv6dr
         WRs/xqq2sFiur1kRR7hAZYv4AS7O20xo+zr2bFXY+QQNZ6XpRtTa/detawFKR5v11Zog
         iLlPNpUwp872Tvh9zROMbYmMjfQfhrtjZ2MEoKovDhn2XYfBbCbcxWoWq+5xiU53NKIg
         xq8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id e1si982724oti.2.2020.12.06.17.55.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Dec 2020 17:55:29 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
	by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4Cq5w832y4zhnYh;
	Mon,  7 Dec 2020 09:54:32 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 7 Dec 2020
 09:54:46 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo
	<wubo40@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 05/12] open-iscsi: Fix NULL pointer dereference in mgmt_ipc_read_req()
Date: Mon, 7 Dec 2020 09:54:03 +0800
Message-ID: <20201207015410.48488-6-haowenchao@huawei.com>
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

If malloc() returns NULL on fail, we should return -ENOMEM to
avoid NULL pointer dereference.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 usr/mgmt_ipc.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/usr/mgmt_ipc.c b/usr/mgmt_ipc.c
index c292161..054378e 100644
--- a/usr/mgmt_ipc.c
+++ b/usr/mgmt_ipc.c
@@ -453,8 +453,11 @@ mgmt_ipc_read_req(queue_task_t *qtask)
 		/* Remember the allocated pointer in the
 		 * qtask - it will be freed by write_rsp.
 		 * Note: we allocate one byte in excess
-		 * so we can append a NUL byte. */
+		 * so we can append a NULL byte. */
 		qtask->payload = malloc(req->payload_len + 1);
+		if (!qtask->payload)
+			return -ENOMEM;
+
 		rc = mgmt_ipc_read_data(qtask->mgmt_ipc_fd,
 				qtask->payload,
 				req->payload_len);
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201207015410.48488-6-haowenchao%40huawei.com.
