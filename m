Return-Path: <open-iscsi+bncBDTZTRGMXIFBBNOR7CAQMGQEL6FNF6Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 346ED329D72
	for <lists+open-iscsi@lfdr.de>; Tue,  2 Mar 2021 12:59:50 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id c18sf4106057oic.7
        for <lists+open-iscsi@lfdr.de>; Tue, 02 Mar 2021 03:59:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614686389; cv=pass;
        d=google.com; s=arc-20160816;
        b=PYFeyuseQ42J+B7mgxQeNmhJvpFaUWkUdxcBPMtISHfw3OdCueo70Nhtkly6BytNJE
         6ppecv092Gv7RZd/cgzVtOWiZ7xynU6riE7tWtroF6NJd/Txp+++o3uHOiHfIlsjgBE2
         KDh2q5WEvXrZOOAHkretL48HlfgYxjFMpLU3xmvMrmy05f+z+HuWXJV8HZR6f0Lo+HkT
         Jn3TbP5/TlKMZXmbSpXPPkmgnaqGlcrx+9I4LIJ3FXHgTj5JvJtV436ueMG7AwFV29ic
         P+m1W3MeZTzOhrQvu+mzllP+DpYhLcLOMJJoGxFux/1/C0XfLUBXN08iBS43qkxKQSG5
         DxsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=XzwSRsb/wtYUxM5Bs38C4KmfyDHMQmRkgT8Z7JvEGok=;
        b=tRhU92jc2xznaOal63XNLHUmH/wZ6YPlchny0URbOHxEftViWebJApJEvL+M0dCsIG
         dRmhNEt6yFTdw9A4duPCi6GZQg02AQzt1penAVY1SoM7wiyZlCJ8XA/K1xbKJjV/UsnW
         8VO+7A8Qd4PZzXbT08ooRl1FyNBPcwcTuBD9qBcrSx5b3KkMt3RwT7NBRdQ6K3AiVirm
         aDasBRqhR9Wy6eNHVZ8K8j+f0ESkREcm+BNPLTe7CdHN3oaKIt3GCkA7IaGY99pLne2O
         TYMrsE1YTSs11RbTRtKwCQS/zsMRtbJRU3+Mt1/QTzGkIykRAScHcHjNrp1Zm+EhaHBp
         JSdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eyMcdMMb;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XzwSRsb/wtYUxM5Bs38C4KmfyDHMQmRkgT8Z7JvEGok=;
        b=jOon9CeAYhuqONImCcWinfVtARvTxWdh1rZsykM0mrbOrEgLdD7w1jfledXrTcwA5e
         AOsZtQA2q/SzWv4NORXXU5Mdr3N1AYCcfkaaoxt4uWXXYI2zb5/9hfrFbUtdS838y48s
         Wntz6ffAmHyc5vZaCWaWskWIvq21n+1w6gYipwC6kMJZPsQ9YkXQAV89/4S965gxNmsX
         ijNHqzFNA8ttg3OiDCxJuuI9fjS3N5r2viX2EbTZNlqgReyHakDCnRgQZXAUiomUQQBp
         s1l/B5FSij6tNzUi0OkEdFd1KdaesyaS3RAnchPqPkhaaDpA6Mw6E9jmIcHbGcdezswR
         qEFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XzwSRsb/wtYUxM5Bs38C4KmfyDHMQmRkgT8Z7JvEGok=;
        b=BQbC3FzShSuiO/JSZsgUdXDeUr48PT8+lRVz2RM4g1G4+ZCN0rPSQgj8H2x/VR0opd
         Bd6uYSmHeODCbJLLBzUQUh6YCym1262qAGGNCRyhwwEmk3fGMgUT1QA3+X9Am9193mg1
         FBGh7O6KsF25L/y0w38X7CI93S6LBHJVHF8NZQ4UIk5uDus/LVC9lZ4wsCfZH3biRGFP
         K7s1Wt2XaoxpMkawJzbSCgXu8J5ulcX7luETqAZsR3MtVEQH2/cOumOy77AsJTl/OiiB
         L42vaafNPOww2eu+YruR6clfRSD8yroRkbjhYzVckce30IWX0QPUW5KXvsifLckXfXOf
         I1bw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531cteJhU4gFlgAddqwP/Olm13aXRMwNen6n4A5+mD3A9gSSBbIV
	q1+FQOnvJ0Wjwj87vOVth7A=
X-Google-Smtp-Source: ABdhPJz6Vit7VKdVdoMwEBTolDUKJFvedij7nlOCvzlNu4SylQog3uI+t0TLgGfZPWPiKSZ0uOJohg==
X-Received: by 2002:aca:f58e:: with SMTP id t136mr2881550oih.173.1614686389190;
        Tue, 02 Mar 2021 03:59:49 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:6c86:: with SMTP id c6ls5628551otr.5.gmail; Tue, 02 Mar
 2021 03:59:48 -0800 (PST)
X-Received: by 2002:a05:6830:90a:: with SMTP id v10mr17661430ott.364.1614686388825;
        Tue, 02 Mar 2021 03:59:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614686388; cv=none;
        d=google.com; s=arc-20160816;
        b=m6EPV6Ch5fSY4uZl7QA/59ZGnQ+FCkto+U4EqHvATCJrBI4+q5R90upXHPI0ncOmzU
         DrnBXT8+tfAA/f9x1OglITYDWQ2oqeiRMyPKhICMMsaZiWe6G+JPLQCMhcQy4IPrijEh
         B0hoTNOqSqnFcBw02l2m7MsCxT3um1bRpnq7otqEe3XQlR1M610eyZ08qCLZtFU3RSBc
         I3+VfhiFvNZfSRLyCUyD3gPjVopT+jeD93waiaEOQLlRQjfC/le+i/7LNjf9JOWOFeFG
         D28A0M8DbZIUFvcjQ6DOEWZm5Y817cM2f7nokA2szUfjeNNOiAHWeXKqG7Dh33W9d5Oo
         lLWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eG5KRnk/rn+160M77g3rnhA8rBFFPvkWTkmj3jVk5u4=;
        b=IT42OxrjP41C7K0ItGme6M3UOrfqmfam8ayFl8OtR8eHOAJ6UDcxEcxJ8SPnOJAO0W
         Gsf7UYoKzNi2LVRfrx7hS75mJAMMHWDZwr/hAt4Ojgniqo1PeooQUwR5Gkqiy4uiIvcl
         reRzCAwfKvLhFbQNv1zFWDCgQt0htmMm4RkWetAFfBb6MJDmtr4we6uh4eK6msksqm6Q
         WyBaaO4LZhx3TLvR/Xu3PVYDjZlfuTswfKWKyYttA8vsCOgXW2MqU4qT147KphpPOhJn
         cP3obAlVA1sFiQB7IARDkeHvG2wxeHc2UtaEYIRlMXwVWS9OES0cqXQXYQLL2xFJ+fA1
         u92g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eyMcdMMb;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q10si1264641oon.2.2021.03.02.03.59.48
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Mar 2021 03:59:48 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DD3FA64FD3;
	Tue,  2 Mar 2021 11:59:45 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 8/8] scsi: libiscsi: Fix iscsi_prep_scsi_cmd_pdu() error handling
Date: Tue,  2 Mar 2021 06:59:35 -0500
Message-Id: <20210302115935.63777-8-sashal@kernel.org>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210302115935.63777-1-sashal@kernel.org>
References: <20210302115935.63777-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=eyMcdMMb;       spf=pass
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

From: Mike Christie <michael.christie@oracle.com>

[ Upstream commit d28d48c699779973ab9a3bd0e5acfa112bd4fdef ]

If iscsi_prep_scsi_cmd_pdu() fails we try to add it back to the cmdqueue,
but we leave it partially setup. We don't have functions that can undo the
pdu and init task setup. We only have cleanup_task which can clean up both
parts. So this has us just fail the cmd and go through the standard cleanup
routine and then have the SCSI midlayer retry it like is done when it fails
in the queuecommand path.

Link: https://lore.kernel.org/r/20210207044608.27585-2-michael.christie@oracle.com
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libiscsi.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 36e415487fe5..444f58589f33 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1568,14 +1568,9 @@ check_mgmt:
 		}
 		rc = iscsi_prep_scsi_cmd_pdu(conn->task);
 		if (rc) {
-			if (rc == -ENOMEM || rc == -EACCES) {
-				spin_lock_bh(&conn->taskqueuelock);
-				list_add_tail(&conn->task->running,
-					      &conn->cmdqueue);
-				conn->task = NULL;
-				spin_unlock_bh(&conn->taskqueuelock);
-				goto done;
-			} else
+			if (rc == -ENOMEM || rc == -EACCES)
+				fail_scsi_task(conn->task, DID_IMM_RETRY);
+			else
 				fail_scsi_task(conn->task, DID_ABORT);
 			spin_lock_bh(&conn->taskqueuelock);
 			continue;
-- 
2.30.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210302115935.63777-8-sashal%40kernel.org.
