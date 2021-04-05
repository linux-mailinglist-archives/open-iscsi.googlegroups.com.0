Return-Path: <open-iscsi+bncBDTZTRGMXIFBBGPKVSBQMGQEAYXQK6Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB0735442F
	for <lists+open-iscsi@lfdr.de>; Mon,  5 Apr 2021 18:04:43 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id o206sf8157642pfd.1
        for <lists+open-iscsi@lfdr.de>; Mon, 05 Apr 2021 09:04:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617638682; cv=pass;
        d=google.com; s=arc-20160816;
        b=asHAXKQlPpqfXyVtIjA/DwxWuZDLU7ApJfPeH+9CNfuoKSm03o18pV/QQGIbe60VJD
         bKmimup/qRMVqB5fS7BDYvxbKalEJDfcLSPZh7QLNhPGjCz8Gm9SxWwsdF540MXNL09A
         XcrkwVpSMSH7nBOeGlhCa0HAMSxBWr6iwfdoruqjQ2SDvJwwxqrHQ2mwhI+0TnaXDUv4
         4UUmGbe7SvyC35k/RSGxTFWx43nr2I8/v2BbYOXRPbNK8y1H1DoBNkajRmYjKhMdb54P
         pqMonBMlPQocWtLBtJCOLZNeitwgvSGpPYr0L4ZqSBDAfqC/6+MEHGM4DR1NEjZmaAsd
         P4OQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=TLQv/6ElqW7ia+nGr/v2TPjBomQ8B3FRqsbMG8/hFwA=;
        b=O8KFCVL3TWQoFIalAg7TapZgo0Ik68JF8h0nMstrZt4cjZ41Aue9aEG751nw2409Q5
         EwTWK26JrKdDUQsgwZecXPpgywUJbS1hd/Jd6lZHJ/2GDwqdzdntLTcrVLWMySK2RdGt
         X5+rvNx4YCxfBSREqLsvlp6m2mNeIQayu4FIduLuqeWNRiVDVxqx059R0HncTNGvrtWh
         3+nPEH7NWjsKzfX4bDj9pXpZP1p5LO8p1CtrehTxDzTlhb1zlKl+5SmdGkJAL5k+6cOP
         SEaYlCj96IxRq36IWw1vRDuIP3xrlN2noVeE7fGTG8LExCMICf4/GQN8EZRjba12b/FK
         bSLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bBkPHwne;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TLQv/6ElqW7ia+nGr/v2TPjBomQ8B3FRqsbMG8/hFwA=;
        b=JGyo5WE6RJit3noWoZSAQgq9l6xW3M0tSkgchlYcG2ESa7DxAA5qn0bJU98iZG3B9G
         8hQb9smm27IIq38zYemPZDpt7KL6/RB8ECPxNtuvr0tvrW1Glif3JglRAIgFUW0c7ofj
         M+f74cuTlK/P0XPCCtXWQT0UctHgLZxCKDQSVNf8qoSYlqrhGtg6apttTDkgUkVRnJQE
         BRjcLv3VuRFtDirqW/hn5It9+S/gey+g/CUrsHvbqWClrHzEDylOP6e4mWxO79tV8Vdg
         kbVfbzvS7XQgq49fw3D+JYI4EsrEd1Ap2J4t46qYUucH2O2HnU6bBWwpwbh2vdYKE8On
         Dr4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TLQv/6ElqW7ia+nGr/v2TPjBomQ8B3FRqsbMG8/hFwA=;
        b=obw8mLH3D6uZYKiciGqE0PWRQi9I7Eydmgo5RSr1mxhnNOc4JjRv73FQXayxOwsfdK
         xwuLyIprhT1HDCwau+nyFfLuA9msJYPBGjiUsQnj4mKnjhuc8J0KCix+JWrh2jE9jsee
         klTZejEnIPP/PlfIHH/6Qn0l5Lx9157v5y+Kj3SmWPF47JVCOKZbtXvR9sWUEBe94lct
         bWM0AA3JT5YaNF10i4VVeHN4asLnpAHGHxBiIgRyYEHUDhuWQAQ/n+30U/ubGqhq6MB2
         rRW8zi5s2IFRag9aFBBF+vwacSw9L0X/bfSNpDvdCLWPkhfaW+iP0vYYZ4VMjrtTWfNn
         OtWA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530zU28SrFFjN7PBVanYMGb18Cc8KEgesPzOmGEVA8U4rLjZB723
	2Wlvqy4XSewffLY70SDAAik=
X-Google-Smtp-Source: ABdhPJzE+whLmQ6QcjIgcenDL/g36tK9i3wySfdCUDhHWzCnJx6oNn+oyIcA7bZ3oOuAFFLu5H7tXg==
X-Received: by 2002:a17:90b:4d12:: with SMTP id mw18mr27435719pjb.196.1617638681986;
        Mon, 05 Apr 2021 09:04:41 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:ef0b:: with SMTP id u11ls6183936pgh.4.gmail; Mon, 05 Apr
 2021 09:04:41 -0700 (PDT)
X-Received: by 2002:aa7:8145:0:b029:20f:58e6:9c17 with SMTP id d5-20020aa781450000b029020f58e69c17mr24046120pfn.52.1617638681310;
        Mon, 05 Apr 2021 09:04:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617638681; cv=none;
        d=google.com; s=arc-20160816;
        b=mjRI8OTsjFJF26Nz9PrWq+WgiixRjVNqBbzEQPzFbv9hvPaHXMF79/dwcyu+2EIjtW
         9fAHpz2feszyrHbzXvjmOjVeignHooYLiVRatjobf7mANFvjme7IQH4AmlZZIzNi3ASL
         ZkShAnLxH7wWQfWwHBZXUmUFG0wk4BGAauVIVgp2dKbnDlyg2zkJSwrie4jUZ6HETH/d
         qwzLM6wNzHYgwEneNKz5JxcBc/eA61oLaxGnLABJnV4DoZ9/8djurBuKxFHlUK+TvLFi
         N8yJUTJAkNpBu6GvKqZtmkH9iYNphsjawG0pSNvDchtDOreTom9vQ20u/a3xC65Q9JZI
         rUnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RQMBxLTRVIfe4uZ6/cSRw5uI3Bsz1ajY4aFJVFQ4olg=;
        b=dBMOPopeE6KfnKr0BTswHZZ6wwslKXZlZiclUE3PTzEksSXYCcDKI+Y9VkLqBSOmzh
         lr2NsGAJkPVyG4eDQCL/JAFXqcqTFaU7ZINH4emAnJsLqkydNptouhg9M11zWQip28BS
         r3M31b3sYoEi+ZM8HVARryiZyGAiEnvdH2+hH2GamDOswQk/C1gZyzc4Qr9woaNX8k+7
         ccH9KKZTwxzEkqeQUBgOs+JEW/y2NCwzFq4Jq7swFl7+9QtYes8LvPo1BvNEsaDrklkz
         Bj/DE8siNfMgIZZ684MupSNd67NBirEhSunHzZqZeop5Rr2ghNanwpi0ZAdLLWsButB2
         ii5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bBkPHwne;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 131si1314233pfa.2.2021.04.05.09.04.41
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 09:04:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 465A5613D0;
	Mon,  5 Apr 2021 16:04:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Gulam Mohamed <gulam.mohamed@oracle.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 07/22] scsi: iscsi: Fix race condition between login and sync thread
Date: Mon,  5 Apr 2021 12:04:16 -0400
Message-Id: <20210405160432.268374-7-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210405160432.268374-1-sashal@kernel.org>
References: <20210405160432.268374-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bBkPHwne;       spf=pass
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

From: Gulam Mohamed <gulam.mohamed@oracle.com>

[ Upstream commit 9e67600ed6b8565da4b85698ec659b5879a6c1c6 ]

A kernel panic was observed due to a timing issue between the sync thread
and the initiator processing a login response from the target. The session
reopen can be invoked both from the session sync thread when iscsid
restarts and from iscsid through the error handler. Before the initiator
receives the response to a login, another reopen request can be sent from
the error handler/sync session. When the initial login response is
subsequently processed, the connection has been closed and the socket has
been released.

To fix this a new connection state, ISCSI_CONN_BOUND, is added:

 - Set the connection state value to ISCSI_CONN_DOWN upon
   iscsi_if_ep_disconnect() and iscsi_if_stop_conn()

 - Set the connection state to the newly created value ISCSI_CONN_BOUND
   after bind connection (transport->bind_conn())

 - In iscsi_set_param(), return -ENOTCONN if the connection state is not
   either ISCSI_CONN_BOUND or ISCSI_CONN_UP

Link: https://lore.kernel.org/r/20210325093248.284678-1-gulam.mohamed@oracle.com
Reviewed-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Gulam Mohamed <gulam.mohamed@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>

index 91074fd97f64..f4bf62b007a0 100644

Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 14 +++++++++++++-
 include/scsi/scsi_transport_iscsi.h |  1 +
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index c53c3f9fa526..f648452d8d66 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2478,6 +2478,7 @@ static void iscsi_if_stop_conn(struct iscsi_cls_conn *conn, int flag)
 	 */
 	mutex_lock(&conn_mutex);
 	conn->transport->stop_conn(conn, flag);
+	conn->state = ISCSI_CONN_DOWN;
 	mutex_unlock(&conn_mutex);
 
 }
@@ -2904,6 +2905,13 @@ iscsi_set_param(struct iscsi_transport *transport, struct iscsi_uevent *ev)
 	default:
 		err = transport->set_param(conn, ev->u.set_param.param,
 					   data, ev->u.set_param.len);
+		if ((conn->state == ISCSI_CONN_BOUND) ||
+			(conn->state == ISCSI_CONN_UP)) {
+			err = transport->set_param(conn, ev->u.set_param.param,
+					data, ev->u.set_param.len);
+		} else {
+			return -ENOTCONN;
+		}
 	}
 
 	return err;
@@ -2963,6 +2971,7 @@ static int iscsi_if_ep_disconnect(struct iscsi_transport *transport,
 		mutex_lock(&conn->ep_mutex);
 		conn->ep = NULL;
 		mutex_unlock(&conn->ep_mutex);
+		conn->state = ISCSI_CONN_DOWN;
 	}
 
 	transport->ep_disconnect(ep);
@@ -3730,6 +3739,8 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		ev->r.retcode =	transport->bind_conn(session, conn,
 						ev->u.b_conn.transport_eph,
 						ev->u.b_conn.is_leading);
+		if (!ev->r.retcode)
+			conn->state = ISCSI_CONN_BOUND;
 		mutex_unlock(&conn_mutex);
 
 		if (ev->r.retcode || !transport->ep_connect)
@@ -3969,7 +3980,8 @@ iscsi_conn_attr(local_ipaddr, ISCSI_PARAM_LOCAL_IPADDR);
 static const char *const connection_state_names[] = {
 	[ISCSI_CONN_UP] = "up",
 	[ISCSI_CONN_DOWN] = "down",
-	[ISCSI_CONN_FAILED] = "failed"
+	[ISCSI_CONN_FAILED] = "failed",
+	[ISCSI_CONN_BOUND] = "bound"
 };
 
 static ssize_t show_conn_state(struct device *dev,
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 8a26a2ffa952..fc5a39839b4b 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -193,6 +193,7 @@ enum iscsi_connection_state {
 	ISCSI_CONN_UP = 0,
 	ISCSI_CONN_DOWN,
 	ISCSI_CONN_FAILED,
+	ISCSI_CONN_BOUND,
 };
 
 struct iscsi_cls_conn {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210405160432.268374-7-sashal%40kernel.org.
