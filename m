Return-Path: <open-iscsi+bncBDTZTRGMXIFBB5PG774QKGQE7OKQ7GY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A93E24D9E0
	for <lists+open-iscsi@lfdr.de>; Fri, 21 Aug 2020 18:16:54 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id bc7sf1398112plb.4
        for <lists+open-iscsi@lfdr.de>; Fri, 21 Aug 2020 09:16:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598026613; cv=pass;
        d=google.com; s=arc-20160816;
        b=p75oBNWTVDEIRmm866paPDTV8mNoyolK9Lt+xD2XPZQLMtFoBJnX62u9uyJZhWA7C3
         C0AP2tcElMF2rlONEWAZ2s8A1o6eeY92j/CaYvZLR05bEb5QVxVQfRF/a22U9RV0+vfD
         bVSchYRgrhziJv4C9oc9CJ1uXEwnXP+J1GvrqFOhZZ1Taah61KtT4XwMXiQaAuZiggfn
         BryQC1PUJ00fp0Kdy6jFQFa7Xi1oFSuhjOpjryvKPhex87xcWQnj1/VDMEkvox2WVtXj
         LcTgXk+I90q4iVXH3Cxs6N8FKp89Kv1NysgcLkhh0q8bvkMD4CzW3aXuL8g2ePbJQkat
         s++A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=RbW91boYLLVCcqsP5/HB1e8w6jED4IuSiq5whl1J+ME=;
        b=fQDvGtN+Hhy8f93v1uzahYUXfYhtLZZaulbZ3XNBpm+7qajfXzYLInhRANBoO5yarI
         uM34MvA+ZZQHgZdLzE0LEy0aDtwScw+UhrCSVTo/Pqhgf0C5jX76Uz/wdgOWuR5QQwsv
         UJXmKsqxI1FK6NL8uPqrBtIx2QK6vEpLhWaEQdT7S/GPPJO053qQte2u+FRyojqeh/nx
         +4WIFp+ciW0Mgv11T+ez/NcnJgUUQpo11ttDzQzPEUL2RdaP5cH4JoR2CY4qIarc7PbX
         MJgWT3hbEHowUwe1Lchwy3IKJ7Jr+kdPPnfKfUzYaeOZTxSff7jkub9GXKlzSq20tabt
         fGrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WOJtdxHM;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RbW91boYLLVCcqsP5/HB1e8w6jED4IuSiq5whl1J+ME=;
        b=ViM/emr3amV/fRFJbS+fuk/nnb96p6q/nvRFlB7ZoWfPk2KnAEj+FAqb2fRNsdfvC5
         1rlinWnB3sj50upgaQ/77WgYadsDF985IAGIWlRkSYB1pyg4DdUjLSotIc0qepmXLGTL
         3+xtLRzLiTiuz/1s0a9kZCvX2AnlCEYAlReKq1FLD5rL94TWRl6huoxuoj6OVW1NF7/m
         88f6WO/KCrL297TZ3lsDwVRtnBJJG/y2I+FZCNGcAiMpU0HNZDbWJMj+y3wUfi/biaZ+
         iaPP7NO2MYMKPyJBA3SWe7mNb/XRgB4odbK1/zf8gthIQwN0hAWuFq3uJsKmjPP59M6v
         E8og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RbW91boYLLVCcqsP5/HB1e8w6jED4IuSiq5whl1J+ME=;
        b=p8R59AOOh8hwYX8C0e8lDaZSwyaS5bdw9Lx6gIdXZy1sUt96irKXumNqfimQ6xtbsg
         npvHpv9C8tDBPe3zs7r2+FC9Ajn0dgt/BC85hfLJ5NnHq9K4401Uz7adKvjZwp/JTwf1
         AZzJh97GwI4t1Kfb++ESXu+3XSQH3MwQJn2el3fzpJKrJThjpxV1GbbzEAzsamOyVx7N
         CDCO6ygHlfTd9+FVZdxpriLh58prfM5YLpbVHF83fyAVHBJkCAHpGiMfk+w3CuwT7hCM
         QeATExnuuqO0/gOa89tmpiN1lEbIKA7RlF03KK+ibZ46CIaK/DZN1TQMBxiRNMBAprb5
         2X3Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532nQb1qC3ZJrnyeFiR0FVGEUALmaAaLlFZlk89IvddFlvdWkoeR
	ojWsFV3RQquGraKcVncW+V4=
X-Google-Smtp-Source: ABdhPJyiPHCq3pVKBGy/z3NehL846/dn9BVX5T0yPSN/QEIg0TzH9fPwV/R2DqDmxal47eHPtsgzag==
X-Received: by 2002:a62:c541:: with SMTP id j62mr3077906pfg.257.1598026613171;
        Fri, 21 Aug 2020 09:16:53 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:524e:: with SMTP id g75ls304949pfb.10.gmail; Fri, 21 Aug
 2020 09:16:52 -0700 (PDT)
X-Received: by 2002:aa7:9569:: with SMTP id x9mr3181315pfq.16.1598026612639;
        Fri, 21 Aug 2020 09:16:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598026612; cv=none;
        d=google.com; s=arc-20160816;
        b=LR2D/E+uMiT7fjvEcY+vMYFfQafS/V7Cw4A4cTin5EGCHJ5VpQabe60oVALMoNX7pD
         MHr+RQzgi9pbCyOAu7rCNe05SGCxdwbb6Ky0N1NarVFXifJSFg8ymocYp8IQnkmToilB
         W0cgNbEeIjaL0pikgMRxhm1c+pWwNlUKEHQIj7yReoicTeI2qFBLQFB/wZMNXImvDTVA
         QU9jfseCss0FiXuz7zbXuMtsA5po+6hLPyM6f9VAoWyXYiqTE8DdBnGurpd83gI84jpZ
         JXULcsJmot0b+dxO6W1ty3w0zC8DC4ET/IdsOXXuHG6aiLQQvyDXMVHlLsln7vUCz2QO
         gIkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dh8W453sb6BzD9b4JjabcPO2Wbl3Y7AF/oFIC+lUyzM=;
        b=mKnDE70KQ9/Gpv+Xqo0wAQ1wWeNMyWHiNWqFYJACZpioamnc7J0m8N2zQfykyZzA9d
         ti1yO0LIvBpP4ecwaIdq6IpVMhNI2IA57QqO7MmbKMiSzzp7+8B8ZcJBFXiFSFHuLx/C
         qZSBUATza2OMQYAcmdjqgPrHmBsuowpLsvqLLP3hSn/qx4fJ9wX8js0koOkui1jEHOvS
         21IXzdwRQKI92NlWvtllxukRvmv5KjcP2yNdL3irhu7P0hsRnH9X4xIrK19lKNiv37tW
         9+0C0QoU1BueA4YedNE9EEAi1ZxFYn8s109/4ea3652urzfNXK9rDgoalOj82aMO2ABf
         Zahw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WOJtdxHM;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c11si137239pjn.0.2020.08.21.09.16.52
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 09:16:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8D4F722CB3;
	Fri, 21 Aug 2020 16:16:51 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jing Xiangfeng <jingxiangfeng@huawei.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 53/61] scsi: iscsi: Do not put host in iscsi_set_flashnode_param()
Date: Fri, 21 Aug 2020 12:15:37 -0400
Message-Id: <20200821161545.347622-53-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821161545.347622-1-sashal@kernel.org>
References: <20200821161545.347622-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WOJtdxHM;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

From: Jing Xiangfeng <jingxiangfeng@huawei.com>

[ Upstream commit 68e12e5f61354eb42cfffbc20a693153fc39738e ]

If scsi_host_lookup() fails we will jump to put_host which may cause a
panic. Jump to exit_set_fnode instead.

Link: https://lore.kernel.org/r/20200615081226.183068-1-jingxiangfeng@huawei.com
Reviewed-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index ea6d498fa9232..1d8359cc00e25 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -3291,7 +3291,7 @@ static int iscsi_set_flashnode_param(struct iscsi_transport *transport,
 		pr_err("%s could not find host no %u\n",
 		       __func__, ev->u.set_flashnode.host_no);
 		err = -ENODEV;
-		goto put_host;
+		goto exit_set_fnode;
 	}
 
 	idx = ev->u.set_flashnode.flashnode_idx;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200821161545.347622-53-sashal%40kernel.org.
