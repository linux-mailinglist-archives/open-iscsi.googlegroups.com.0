Return-Path: <open-iscsi+bncBDTZTRGMXIFBBAHKVSBQMGQEOZZVWSQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id F3926354405
	for <lists+open-iscsi@lfdr.de>; Mon,  5 Apr 2021 18:04:17 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id r10sf11185216iod.20
        for <lists+open-iscsi@lfdr.de>; Mon, 05 Apr 2021 09:04:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617638656; cv=pass;
        d=google.com; s=arc-20160816;
        b=UcpwauHhplkywBp+sDZbhpZMR77FeTBuIefe4pf3pie20Ys54w6MoUpnz2mdin4DhY
         qdNAf6bLfWOs3MA8Y+65SitkoaE+O49xc8N01OoYFr3k2JSi98MYBUXlxqoLMBUzG7qd
         A8qPrz4drxAKS9UKUIzIk94Wa3jOlJDN9uc6CBX5I1ddvmsLqbIPLV9qDhy1xPEOqSSk
         7yiw7XcZWbOpPzKAk0cORIAv1ViEuTY94IPavU57I1fDUNzElfUZ7TtDKYUH6xrFSvEG
         FSHWzYNj3E4YtdYaSKlXmsvkkgUVcqp7MLtgTKPjsyKBF9vOQU5XocvafcAU8dHVmLek
         Rw/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=IElKkGDlPv48Q38qceMvXgSqpPujTAg7EMzpWGw9SOk=;
        b=ubtjckx7z3RyDZH6kzOzuhszKxpH88goyR/6gicUSEssQRC7Ck4GOId3yxscxQMFFS
         Zll/VInFxCA48ZhifQ7MzkxYTWzpLGdBu6I3VIAfWd5/nLgVn8kIgFy2vyx9UJOB+BgC
         ne9ber3g/5Ypanp1cJb2DllLptTgSSu1pserjkPwIyCMayJyvG0CUPG0wantjW2lcsmi
         WDDvHDLbriMAfKaAnuILvXJ5Z+9AXsg4tEi6mmkLJQUvP7VHJ4YRl+8nkBHVt/iT3PM8
         Y2UzKDj5Bzyiw7ASzTbCoP7sTz9XhovzHxIT/uR/S2NqmjPz6iplvdER42HhO1W69N99
         9NDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=J9vqABgQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IElKkGDlPv48Q38qceMvXgSqpPujTAg7EMzpWGw9SOk=;
        b=eT9OYsxOz1aPp57dOUIYRayTFe/t6AwOuAJ8HMO+InHvb9w4GVWSA1054RT9Zbw+tL
         bK/kEKTRs1d7vYTbdKV9tc8I8UJVHh4RDd546HuLYINrAj8fFOKirf2DgJVD3FCYbH0C
         jZ5Gw8p8LzHXUNlMvp404QX6K8662opR8UeHAM+LHF9BCR1SRnY88mQ0u8lO6kObqQlk
         9AVuLYawNQyo7dNmFS4QAtvh9R5JFjNfJ58KrP7rtdyj8wvxMIouHlKvTGZyzWTyGH2j
         c0+mMO8Mh5Q3sfSuXG+p52TLz+Ff15bALLayJJxdPoCGh1ArW7jcpVkyH2X2aGEVFFBq
         Hw2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IElKkGDlPv48Q38qceMvXgSqpPujTAg7EMzpWGw9SOk=;
        b=qSvh+PbkO+UYnzsrWuk+amarJug2qIhB/tP9hKBVGBvn8UkXJS96CeEy/BcWLFCC4U
         BpvjZVPWwj0CF25bdkDHWzFcAqNER45u0MBwgQrttwaFhDa3p2STN5p/RxJtexJCMjpA
         275EOWdU4GhfZH/vaW7keDwtoaordDyElK2ToltOCdZWIE6XhgxjCIDJbeNun/zWct+1
         UOhIad6F28b8564BrevgpyXzIvonMD133Cef5IVGKxHe5c/QKyfEgoYsLNMv1d8i8elv
         MNFS81bNNoBMGLfbYF+I/Zn4AC6EaYc8uVOOKABuNwmtVNGE7SPotvs8SWXKMH0iyQOx
         lw7w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532QwiXVST7DyVPpds5IefHRPkIpLxigWAIUJD0OgxPscJKQTDK4
	WAgexdgXyu/TScqqffkxmDM=
X-Google-Smtp-Source: ABdhPJx/O7I1HIWYQS2Q0hbFyZ7x6XYxiwOzXgdneECwbPO8/g7LQo153BL73f85gL96FhZMj7WXaA==
X-Received: by 2002:a05:6638:2044:: with SMTP id t4mr25233230jaj.12.1617638656593;
        Mon, 05 Apr 2021 09:04:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6602:107:: with SMTP id s7ls686122iot.2.gmail; Mon, 05
 Apr 2021 09:04:15 -0700 (PDT)
X-Received: by 2002:a6b:5c0d:: with SMTP id z13mr19871727ioh.6.1617638655871;
        Mon, 05 Apr 2021 09:04:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617638655; cv=none;
        d=google.com; s=arc-20160816;
        b=K/S18WtJiNvJbqHlhbUHtQMKfk9C0SIuumoNWD+KbQYua5hWwtPprEioIWGIbKXE0a
         V1gWZcdVfLY5gQ2ooA/2iH6IBm2Y2VpAJA4kTAnI9k2aEHJbm/tFW7AeMqL6AtPf9dA6
         brUpnY94zQ6a5pQXnJhH5fHpe/jc+wkPjWprcXy1gJ9UmzjGV15xVW1fKH7IdUbkvwMM
         sb+4LNTZc9cCjIwAmbpUHqQxsLRivZmTETTL2wTEnH/LbwD08Ttqx2t4C31A5u7C8J2E
         SFjFqj/Mrr6F4wbHdHw8EEsYIHbuP7+x2tnJwFQy/hW7YcQbLYd0FhpdigbIwyt9AoVS
         CMKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RQMBxLTRVIfe4uZ6/cSRw5uI3Bsz1ajY4aFJVFQ4olg=;
        b=xP7F5sze19gLmGKiWq9WOPmM+loB3giChjp5SSvAit5YI76k4yfR+/KOXbRSUrrNk3
         HGJN56cy+kIxEN1i1oNNc2T+OO5EaA4To485jTbCR3bVV8eNsMsLWJ3WceCw+KfoNip3
         FDekCSrlUnSDV9JsIEpVDRki0dzzoSTjaIPC6f02sv+WioUvtU7E9mHT0/JK52qBKPu4
         z3i1gzSMTOGBEz+uyK9JoZBVHENjrcJNU3CADs0x9SuglYVaaRWRpg7ytW5WtIX850dJ
         LnBNfCSedM9AQVrk/ZiZteWeRpxtDZNxK8FaMJubjHXLiScJ3sWnrFPZzTBRaIn+gXgc
         FVaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=J9vqABgQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c1si923645iot.4.2021.04.05.09.04.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 09:04:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4ED31613B8;
	Mon,  5 Apr 2021 16:04:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Gulam Mohamed <gulam.mohamed@oracle.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.11 07/22] scsi: iscsi: Fix race condition between login and sync thread
Date: Mon,  5 Apr 2021 12:03:50 -0400
Message-Id: <20210405160406.268132-7-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210405160406.268132-1-sashal@kernel.org>
References: <20210405160406.268132-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=J9vqABgQ;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210405160406.268132-7-sashal%40kernel.org.
