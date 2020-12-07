Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBEMXW37AKGQEDU5XRLI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA142D08FE
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Dec 2020 02:55:30 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id e21sf6756231pjh.5
        for <lists+open-iscsi@lfdr.de>; Sun, 06 Dec 2020 17:55:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607306129; cv=pass;
        d=google.com; s=arc-20160816;
        b=SqnRjjlts3RVh0zqt7VeQCU4y17Ze4r6XuEX8q8HB0KKkGgQ2fQaiqpNZ82mCeNoSr
         UM8MuMjlvrBQ29Dmuw2zm/J6tZ+RDlPARXq2r9XXSnNlIoR50cKgQO8BRUB/Z3dzfk9B
         lKrZ6oCYWs5e9at0WQ0yVV6pfPfBsd/lb36Hwr4Yfq5ITsD33qmhmoAAqBqS2eeq/zAv
         DxlyCZV7cgoTqqp/wn5/oGGAFTO8TrcFIS9A8x2kGnqGCT9n8Q1zh9MxUiTNnBGQbjWf
         qHQC1B8LgjU9VexTQ4BgCTSUIAmKjNX1OuCxdKTqGCENPxh4KwMPwbfq9dmst9BuyO2T
         Z6YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=bNZ+e5Y9ljDZEkhhaJ/jPN/UW53LnLfxR0lIKwsbYTo=;
        b=rh0pCBGeIH3AX0UWcJQaQCAbwsPvixqXWXf0dtKDfjDsW8z2K83ycz2g4wNzgzVXip
         BQxs3btfeT/xGsG04eaJp86oN9WQ/JNsQhUMJwNp85mZ1mUGPAUWVIvdZBoTa6y1OMkk
         OAEQUO9eMH29IY/DijOiSINYCY1u+hdG5Eu4/cTRlbiiqWtbqNhRsYKLvXcC5ONipVcL
         ApiF02xYqkRGn2UnsymFnVnkG3ZczeAJVZr/f96qnbSpHUQc5rmM6hVtM+x9hq/8za7g
         7pPIwb/vLVIqMXhgwg+kNRx4ILzgrWjXJp8UkQ0quSCCDr1JdYaWbB9iZzNZYcareOxR
         /teg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bNZ+e5Y9ljDZEkhhaJ/jPN/UW53LnLfxR0lIKwsbYTo=;
        b=BPB4MPPNks0gAHuSC/kOhThFL0U1rwGO6ZMEHS5UE8W/piprdIi8Qqrv2VwOBUZ5R5
         xwhDH1DwjcK9toT6IbX9/teR0l43/WZJ5JZvTkkCXfdgLjA5V5SOlEAk+w97DVomtY9E
         JJTOECt3OrjBKOFbZAIgslVejU8xI5NsG2SMoM5styt+4yR96eS4YN0FaVFBpS7Lo5OM
         m4cjzsCB/dlfcUIdiYVYYdsf2FegSGm7h9qrUYRz6gthbLwB63dDwd3tZ6Ri7RbFnBjA
         KlNd3ARYSP6xQgRgh/JIscqAN9e68Z+6XX7lN6kblJkg5JjOovRvivP52rsBoflIzKVy
         oz+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bNZ+e5Y9ljDZEkhhaJ/jPN/UW53LnLfxR0lIKwsbYTo=;
        b=cB2njjBHFi/C45z0bIEjFYmhZYKmYaNfoWxeqB1Z7iaNWke7ScI6Nf6HPmSqVMyCys
         q68PTNgmVafScmIPcWlgcvRQ+pZnSlKtA5N83NnKYx3a0mwsuqV5MPxmO4b00OMzGRC2
         WeRxVFi07FbGkMev/seguepcsOmGKa/bNRgyYTLj3P6j++oDD4XG2X13Kc5ho4hXWDha
         5ypls7VZLUBOV95jmed9UL/cV92BlR3rbvm7WPV2od3GXA746kjxzkthyuhCUDvgTFwP
         3+K9CWAI5ju+hXWiL1XmxaGcYY71Q0N5Pmi1H+0rQtFcPaF3WXCPQaf1Z3U20M0qPNFj
         tO2w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531q6Bu9DDs3tPkPRGBQFmwUfPZSrq2wSj+/Ak8I/RzbCZhBjsBn
	gqaAU4haLeyZ5yP2WvwCYYI=
X-Google-Smtp-Source: ABdhPJwHuVdnH+WJF/VZ/vIavVhVSYtkptULtUcZEvLLh9oooCzVzeCfyYy4PJ29LpJzSh4qMH+wEQ==
X-Received: by 2002:a63:f154:: with SMTP id o20mr14009134pgk.127.1607306129421;
        Sun, 06 Dec 2020 17:55:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:230a:: with SMTP id j10ls5235861pgj.9.gmail; Sun, 06 Dec
 2020 17:55:28 -0800 (PST)
X-Received: by 2002:a63:1805:: with SMTP id y5mr16374890pgl.27.1607306128781;
        Sun, 06 Dec 2020 17:55:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607306128; cv=none;
        d=google.com; s=arc-20160816;
        b=CsrUlqLRy2OEhMiILFiydvbXI6FxyyFIiOVLJLup+Aw7FWIVuTWG4rX8c9tNFoYWH7
         y2fPoZv3pf6JUgdE2gL2fA/6rXLsrdZUIFkBsF7JrG5i35Prv6zj7IY1fzgf9UZkFBr2
         xoW38UuUV7ShdkaPTfuIidjWJB0EFAX189+Aq9TMKig/vDWXVi0WPJbU2D4SdnfOYC9w
         KgkhQ1dPI1Xdky7vWX/2Itpc0NRZzQqb5t2SgDHewC5BTqstADWURzHZ/nZrUchv/pMX
         lm1rdTjp8DV4kp48X9VygwFOD8tNo3SeYwgINufSFvGIvD9ciVnuJ6RFQfY2ZzaFQdBl
         3Ymg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=WGnf5Tl6da7UZWEry9E6iXQzWjglHdpTuPDQ8RUgcLs=;
        b=tnORWIlTs0ZIO13bzQpFRe3pzAf8og0fUzaxivAuErnGI/302/+2NvuZu54gAiEOiU
         TFhaQtUwNbcJ8lSnKL9WFvMqoqWYnCPtqJIkoEEMHNCbxKtUh9uwQORugegNZ+4gKL+Y
         pdCzScaZWIz0CuE0oLIcwQXLa30l9lYYDu+CS6sYHniSNV93FVzLWYprt3EeD5RJiplr
         qAUyuaELeCuVFQhM3hASE5u2GGqLGaT5ChV3g9m0DFSO+DMT1I7Q2r5GoH07xDm3Tv1U
         1akkYiQYd5SFjZb8ntiiSJ6m5yIRCHNj1XTDau1g/ZAz3Tk/4IuLBNsz0j53i8F2QaX4
         riFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id v66si740001pfc.5.2020.12.06.17.55.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Dec 2020 17:55:28 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
	by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4Cq5w82tBLzhnXN;
	Mon,  7 Dec 2020 09:54:32 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 7 Dec 2020
 09:54:45 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo
	<wubo40@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 04/12] open-iscsi: Fix invalid pointer deference in find_initiator()
Date: Mon, 7 Dec 2020 09:54:02 +0800
Message-ID: <20201207015410.48488-5-haowenchao@huawei.com>
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

If calloc() returns NULL just return ENOMEM;
if strdup() returns NULL we should free dev and return errno.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
---
 utils/fwparam_ibft/fwparam_ppc.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/utils/fwparam_ibft/fwparam_ppc.c b/utils/fwparam_ibft/fwparam_ppc.c
index 429d45c..b5eaa00 100644
--- a/utils/fwparam_ibft/fwparam_ppc.c
+++ b/utils/fwparam_ibft/fwparam_ppc.c
@@ -332,9 +332,16 @@ static int find_initiator(const char *fpath, const struct stat *sb, int tflag,
 				      "/aliases/iscsi-disk"))) {
 
 		if (dev_count < OFWDEV_MAX) {
-			ofwdevs[dev_count++] = dev =
-				calloc(sizeof(struct ofw_dev), 1);
+			dev = calloc(sizeof(struct ofw_dev), 1);
+			if (!dev)
+				return -ENOMEM;
+
 			dev->prop_path = strdup(fpath + devtree_offset);
+			if (!dev->prop_path) {
+				free(dev);
+				return errno;
+			}
+			ofwdevs[dev_count++] = dev;
 		}
 	}
 	return 0;
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201207015410.48488-5-haowenchao%40huawei.com.
