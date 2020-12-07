Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBDEXW37AKGQEQ7ATPMQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8B62D08F6
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Dec 2020 02:55:25 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id 18sf5697316vky.14
        for <lists+open-iscsi@lfdr.de>; Sun, 06 Dec 2020 17:55:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607306124; cv=pass;
        d=google.com; s=arc-20160816;
        b=0uH2yM2a+3kjVAVyzSMMnQFG5uXDO6bwvSJyAN5487SI4hpxKwCDCCwCLhb24h2Xf1
         OOH/EEUySCy9lL5gwP8K7Xu66TomXgQ6j6nuBEwY38jpaImZdBpAm+EP5UkqZ5sh5bTc
         2SOJKtimVIE77iRyzajF4vnDvN7fLjQDlKuRttBPncLS/FgRIeitCnBSOm6wi4D95aCS
         wxZ5IMVSDWVHWkuYowGwdx/iawNfL9++Cnr1GoVHlNkQXpS6VTfM+SeBZigh/IwVcUHr
         if6Gw9gMgGCDHcesjNZ9zzD8NliMPcCwUJ6WsqyDe9ksaCbSZSNxSGiLIKafNdtaFokH
         fgwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=wFsmU/esvdxFKA27q2dNS8eRcKYV4snY173HajncAVU=;
        b=qeXYwBSPbnGGgLu0pzofN1qYfd8fvOUeSH3JBBItkJ8U3JLmf1RWv5Jvq+upLMmXKj
         LsU3/EATaQ5KZzJpSmqrlLFr43KGbXMtPnO3r0AcAySEqySW1QDzLYepxrTScMKULLro
         n3EMixOmZWWN5yP4awzVu17GnJ1aYiy+Fr8Kzu55AXBbIvpMpc71scyua8bARDlYQoDm
         2HsFQ/DXGg2mknXfuLZgLOjCuSf/0HfVTOmUvAaEMePv0HNyo+oV4tuFEp2OUqvQ0joy
         yt8WzrvVpAyhwJd4rxgObV96QlAnHmG8scG55J9xDOBWZCJkt79Q/fFlgMCZecYgwuX2
         tuGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wFsmU/esvdxFKA27q2dNS8eRcKYV4snY173HajncAVU=;
        b=eR67DTf2JmoMja4ks2fJV7WlkuYdXOCmYAPKan0J3U/sFW///ciJM9IKhtzv8aFcyF
         +nKmYjloIzSbgv/Mrxq5HBcr2UDRaQVfJiTi28aOy/UWy5wqKBb3qu0IC1JqbAwRNGeR
         lAQ6K3bzRtcprCVO/BtJTnXqFR1tThJ4ioo1HzmZGfEOJeW2Tf9hFtRIZ4sXAKwQ2u+D
         raiaDkZv1bgpJu8/+8bIGGM7+1CGJcwTrkzF6eUC88Rqvo6omLfa7KxkYSS65RjrkzHk
         eLteCPczXXxevn4OwLgTH6kIJnc3jx8dTR1Wn5OQ3PAvWy2cZ7inFDiTO9BXpzvkyQcc
         rLNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wFsmU/esvdxFKA27q2dNS8eRcKYV4snY173HajncAVU=;
        b=GATr5PVbebHyGxsgp7iJolaO1GaFVa8i3L/kK3vlvb3/xqU6siA+l1egSK2aDbvYo4
         yF0nIChX1637iNtX3Ds/6LeJchRwZug0SgfYsOo33eNckxLZF6wPs0dXWJRejJ40vbmP
         SKzZiCEkflN7M9h4QCwqGU1DQ4KdcmtYH2k34trbAK1FsxRuuXNph+KC5KnhruP6+OvE
         +3I/QcPSYMqLxAXXGH2UJeQlfHjReBPdFoT7fAOE8n/X6O/8FuH7ES3dtTm+d69Nzvqf
         xmFgyECngB0s/LpjIR3W7G+kEQyM99n/NV4QWyj8j6dbuUf45l+cG+2dQMal/8MPLRJ2
         Mzwg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530OCgH4ShwtzT6sH3lL+f/hVRrxuh+mJDbapsQkCdu/k7+SRbZ2
	1vg45Ssn4UKUC4KQy9wzEjA=
X-Google-Smtp-Source: ABdhPJyoZjh3OrIyVrv0x5n9OP64tNS+JoHjTtB6c+5CMGg0kQImm1vlx9ec1iZQnUAWc20LjIkqXA==
X-Received: by 2002:a1f:9acc:: with SMTP id c195mr3187522vke.1.1607306124750;
        Sun, 06 Dec 2020 17:55:24 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ab0:638e:: with SMTP id y14ls1161002uao.9.gmail; Sun, 06 Dec
 2020 17:55:24 -0800 (PST)
X-Received: by 2002:ab0:1d95:: with SMTP id l21mr7111334uak.138.1607306124211;
        Sun, 06 Dec 2020 17:55:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607306124; cv=none;
        d=google.com; s=arc-20160816;
        b=p0hkTW3QMQd/3Rq+PiXhZHSm9XUivocu8EWo/acupaZxRQ4Zv+TUUvMiG2CkOfMmY0
         m25NpyPSkk5NQEU8XQvgtHUIXVGie6es2ZTw5ya3WETbyTjLTZvgyspugYuokimcAKap
         kOrDbDT5BTPuz+RrE7kUYOXDOcD6lFUQ3fMm426ho61Dg3zHcKUwvWQ1tb97w+GMLkGm
         xij4Q8a7R+6UnfKdefvzvKzoQ/VoqOF2RfFeXwG8AQQkTsOn0BLdZERP46eIvpzDAa4e
         fzlUgrwArq+qyR4e5oit3k2+EqECMkTlt6MLidsswY96fpGjvYJ8NSlqCXu7Qb+j1HK5
         948A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=nsiRLCakw+iH/Ee82zGeruz/k6aNVAxR7LOL9fxw6Tk=;
        b=CLriCMiBQoDlNnEYA5rD7V0xYLlcnZnr8uL2GYidMwHOQkNxP0VOc+Pk+iA5/XBjHM
         9cs3grMfi4V6DkOgHvzX/Fkyw+/ru7S//6fMght6ueSfaCdnkRH9wwOp9g6lOCDqL9bD
         vWYrWBdd++xJA4pFxLLNtBS/V1JraOFx23ctgAjV2hhQia800Qdk3O23NFSS/XEXK1L+
         WOdprGumIctIOxuWxEeU5aMTtAqV1XWgVL88g71dkQpA4mPM19fge3U0EPlBnv7I9XCm
         1l9Ynw2QwSOQlSJN5ltksWQxra9858uzmwGNBDnCM3eRJXpXzXAElDgs3hJUD6afXTbC
         gYsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id f26si567039uao.0.2020.12.06.17.55.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Dec 2020 17:55:24 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
	by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4Cq5vx0krJz79TP;
	Mon,  7 Dec 2020 09:54:21 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 7 Dec 2020
 09:54:44 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo
	<wubo40@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 03/12] iscsiuio: Fix invalid parameter when call fstat()
Date: Mon, 7 Dec 2020 09:54:01 +0800
Message-ID: <20201207015410.48488-4-haowenchao@huawei.com>
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

Both qedi_open() and bnx2x_open() perform 15 times retry
to make system call open() successful, while this retry
mechanism can not make sure open() can execute successfully.
So this patch verify return value of open(), if it is still
INVALID_FD just print error info and return the errno.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
---
 iscsiuio/src/unix/libs/bnx2x.c | 7 +++++++
 iscsiuio/src/unix/libs/qedi.c  | 7 +++++++
 2 files changed, 14 insertions(+)

diff --git a/iscsiuio/src/unix/libs/bnx2x.c b/iscsiuio/src/unix/libs/bnx2x.c
index c5e7b71..0e326d4 100644
--- a/iscsiuio/src/unix/libs/bnx2x.c
+++ b/iscsiuio/src/unix/libs/bnx2x.c
@@ -751,6 +751,13 @@ static int bnx2x_open(nic_t *nic)
 			count++;
 		}
 	}
+	if (nic->fd == INVALID_FD) {
+		LOG_ERR(PFX "%s: Could not open device: %s, [%s]",
+			nic->log_name, nic->uio_device_name,
+			strerror(errno));
+		rc = errno;
+		goto open_error;
+	}
 	if (fstat(nic->fd, &uio_stat) < 0) {
 		LOG_ERR(PFX "%s: Could not fstat device", nic->log_name);
 		rc = -ENODEV;
diff --git a/iscsiuio/src/unix/libs/qedi.c b/iscsiuio/src/unix/libs/qedi.c
index 3414cb5..1af8d1b 100644
--- a/iscsiuio/src/unix/libs/qedi.c
+++ b/iscsiuio/src/unix/libs/qedi.c
@@ -517,6 +517,13 @@ static int qedi_open(nic_t *nic)
 			count++;
 		}
 	}
+	if (nic->fd == INVALID_FD) {
+		LOG_ERR(PFX "%s: Could not open device: %s, [%s]",
+			nic->log_name, nic->uio_device_name,
+			strerror(errno));
+		rc = errno;
+		goto open_error;
+	}
 	if (fstat(nic->fd, &uio_stat) < 0) {
 		LOG_ERR(PFX "%s: Could not fstat device", nic->log_name);
 		rc = -ENODEV;
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201207015410.48488-4-haowenchao%40huawei.com.
