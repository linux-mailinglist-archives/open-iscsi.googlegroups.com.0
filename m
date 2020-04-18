Return-Path: <open-iscsi+bncBDTZTRGMXIFBBHFE5T2AKGQENNLFR7I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 060F61AEF1C
	for <lists+open-iscsi@lfdr.de>; Sat, 18 Apr 2020 16:43:42 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id j68sf2103682vkj.12
        for <lists+open-iscsi@lfdr.de>; Sat, 18 Apr 2020 07:43:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587221020; cv=pass;
        d=google.com; s=arc-20160816;
        b=0HJj/LeCf4Z4rXbGS9rhcBRX+W3wie2uHzPbxlwIa55hKqZvP4DIKkc8CTA7jisFKS
         bd/RY/65mg5djqfVZAlE9TZy/5EftbN0tLwMAvrxKZtnGbs+UZjQ+/h4u5dC+qrF8loR
         7ERE6R09gHaJ23pd4NmuS1R8LHtvXtgrKtXJGPoHpHqRYfvzUVhaDNsVHgm791Svs/UV
         ycdr0Q1Gy5Docz2+iek0eNCQsNX+goWzPDGirstrmIiTiWhcKPYq03TRBtNdVrsVU6RI
         R9/S6PPQw+gydtfzuXxTs63v7/yUYa9ZG3xpxNBmUAZIwWrfB9pPQZcJGlJmwTa2J0Ed
         fb3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=bKfxbb4hVxJXs83EU69tsXE6vB2Zvx2iGTVw3FDYv7o=;
        b=ifZAnWF9Wwvl9KBfC3c/JNnnNY0v1hGCPyy7PqL5uSGcC0jG7EjYavboxUoF4PrEtZ
         d3bTtAFPvH7a0IDvLW21Kt7l3YORVfK0PobITZZilnHaw0OQYNP/5VHScW+z1zVaKrWQ
         BacubwdXUL0rN0ouUpQ+d62PPzhfcSWLdK/ZaLxHsB7MFkvc8qy63FoKDnIxAEy9in6y
         fxEHbdFjGn2HV5NU9Z13okcbFpGkUOY+gldnptE5yekof0Jn1LlBZKkYB88e8nfE+QbY
         KtBIHOAIqtds8spku0457ZhbO28m4jQ4yFkiCeiBr3jLYhdF483S7zD5nxtxc835I8MR
         JWlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DVF4ZtUU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bKfxbb4hVxJXs83EU69tsXE6vB2Zvx2iGTVw3FDYv7o=;
        b=tRYobOsSvJnP/vrV+YOpdooedJs0EjoHMTObPQLj8QA8sFYkmn4BBSXEJ+BZVVWqdd
         UI61CZRWB77L0fwASrOJHPzpv54mVLyoHBcY65PirHVa3/CEmijh6XOYd+Bgu6pkeUQ4
         d1A1Zi5Mru6vq3m5BEjI+CK5BHLriW7oY5dxbu3ZxAzc3N4CzC7J3KN3M9tfsppntwas
         m3niBtwJosBofGr3tUVU3ITrLz2K3dBHVbPuFIMfDjFGsNOnbjoN0vu493zR1pNiGkbk
         XBGMQdJ5ObfEJ0Kz5/J28uRkpEOwBNIO6dSyX8qBN9Y/FGyLPR/JJ84P7yU0i02BEJJs
         FVhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bKfxbb4hVxJXs83EU69tsXE6vB2Zvx2iGTVw3FDYv7o=;
        b=H0/SNloRE5f1LV+Jv550WhCoDAkfN9gavUfrm7SzTcIRDRZSyJxLOIowbiRxJzszqQ
         yuqSCi4Xdo5XgOY2+TeQUcNZlZGoQ8hAI/Xd/59EGoHFa05qpCdJSh5ELT2daQe97g63
         0k0ButdhcwlJCoGksWqCvhJM9jos4eVg7fQXIdJ4xIDu/TyHWzb3ScJ1NZUgJlQ5GO/t
         f8NmyUYMc6ZxMl5+KmTW+nCmmzFCdhW0xRO2jpt37kgsCiOEQM/nyr0cy4jQr3bP/4aR
         /YXgD/sFSHxyBEC+qnRJUipiDoo9KZt2JyFzHqO8eMxzathLOmenbMIapY0k1gx5cLdN
         ZftQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PubNSaLQU32BgFrVPDEaA7v8mJhTSSvBTVr9G7SmeuO868aVbM20
	k067VrgGjyGCZfv2SEf1Gso=
X-Google-Smtp-Source: APiQypKdGQMt5OwTqUj6GehfRYNAKtT6i4d2BjBCNAfoErgTAkoc5X0WAJsFPaPrz2BJHy/y0Qj0FQ==
X-Received: by 2002:a67:f9d0:: with SMTP id c16mr5352459vsq.53.1587221020735;
        Sat, 18 Apr 2020 07:43:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6102:2378:: with SMTP id o24ls53821vsa.3.gmail; Sat, 18
 Apr 2020 07:43:40 -0700 (PDT)
X-Received: by 2002:a67:fa03:: with SMTP id i3mr6031551vsq.3.1587221020401;
        Sat, 18 Apr 2020 07:43:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587221020; cv=none;
        d=google.com; s=arc-20160816;
        b=bQo8aEmGPDCZx796t8sLxmupM6nUuJzzxTpHfoObap9qThOn2nIPp98UekJuq3YF1Z
         TdN8mEDUI7WafNUTLgntXG1sPGxcnVyYrvekOdgUFgbHYX/TGSaj7SE1XRKB+26uy+cx
         Fln4srT21bM3iCDd0J0hmEQwjPVOirDAtJqKgoOrAI8/oc6BsymK+uKw+kBKtWY/7yas
         zXcKSkhtS3yjVz32zzYN9XyKwbCjkqSbeROdmf88UcWtsr2KtYRmDyKZXzmhdzSGePOn
         YpcgfsH9MVNj7SM+2yK8Y5Y27QldCZXgt5FyqgWEwVWE+qUSOLd/+gLX4Ar6Es2uf1JH
         EeOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wCNYi+cRqzRE6CwCugL3073s8mqSHAVxab6TSgL90Rg=;
        b=pMbmVIk/lfGz08W+RKeQqALyhrh4Ni1JKHF9P2ixltCN9dbO2ZvRDSTYgM25TBukDk
         tCNgLxQgB2fV2cgKWQIOXvW3JOHqaO3u5VfCtX4zzCLnx9GaMSdW4a1C2+GJzmnXq7qx
         JbU540M4XtI+qBGZ38nCrOigzLmaha9dn5YiT4wcJWCMPm+f7U26mccgTV8ztu3k+C1n
         awtKK8t8h9rO7XoMtDFRH0QiOFnV3WovDDS7C/gIQxpK8YR2dlhNcGXBCwnso7mrM/mo
         xLUhuHuZZzOhgBMFtikBaXt3HjxxgZOeDazD/z1zJUHBAlw9tpJhPDv3QBDdkvD8Oovs
         9QBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DVF4ZtUU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t191si1908270vkt.0.2020.04.18.07.43.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Apr 2020 07:43:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6F9D122251;
	Sat, 18 Apr 2020 14:43:38 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Wu Bo <wubo40@huawei.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 09/28] scsi: iscsi: Report unbind session event when the target has been removed
Date: Sat, 18 Apr 2020 10:43:09 -0400
Message-Id: <20200418144328.10265-9-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418144328.10265-1-sashal@kernel.org>
References: <20200418144328.10265-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=DVF4ZtUU;       spf=pass
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

From: Wu Bo <wubo40@huawei.com>

[ Upstream commit 13e60d3ba287d96eeaf1deaadba51f71578119a3 ]

If the daemon is restarted or crashes while logging out of a session, the
unbind session event sent by the kernel is not processed and is lost.  When
the daemon starts again, the session can't be unbound because the daemon is
waiting for the event message. However, the kernel has already logged out
and the event will not be resent.

When iscsid restart is complete, logout session reports error:

Logging out of session [sid: 6, target: iqn.xxxxx, portal: xx.xx.xx.xx,3260]
iscsiadm: Could not logout of [sid: 6, target: iscsiadm -m node iqn.xxxxx, portal: xx.xx.xx.xx,3260].
iscsiadm: initiator reported error (9 - internal error)
iscsiadm: Could not logout of all requested sessions

Make sure the unbind event is emitted.

[mkp: commit desc and applied by hand since patch was mangled]

Link: https://lore.kernel.org/r/4eab1771-2cb3-8e79-b31c-923652340e99@huawei.com
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index aecb563a2b4e3..9589015234693 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2010,7 +2010,7 @@ static void __iscsi_unbind_session(struct work_struct *work)
 	if (session->target_id == ISCSI_MAX_TARGET) {
 		spin_unlock_irqrestore(&session->lock, flags);
 		mutex_unlock(&ihost->mutex);
-		return;
+		goto unbind_session_exit;
 	}
 
 	target_id = session->target_id;
@@ -2022,6 +2022,8 @@ static void __iscsi_unbind_session(struct work_struct *work)
 		ida_simple_remove(&iscsi_sess_ida, target_id);
 
 	scsi_remove_target(&session->dev);
+
+unbind_session_exit:
 	iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
 	ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
 }
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200418144328.10265-9-sashal%40kernel.org.
