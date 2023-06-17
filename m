Return-Path: <open-iscsi+bncBDLIXLMFVAERBTOGW2SAMGQEK37ZZNI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 833C27340A4
	for <lists+open-iscsi@lfdr.de>; Sat, 17 Jun 2023 14:13:05 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id ffacd0b85a97d-30e4d85e1ffsf2356726f8f.0
        for <lists+open-iscsi@lfdr.de>; Sat, 17 Jun 2023 05:13:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1687003985; cv=pass;
        d=google.com; s=arc-20160816;
        b=F6i6Cwy6USkK25okbSRNIiec6uLbIT9VTpf7/ApPKgnbC21rMxSOFhcB4waSzBe+BU
         8og1Fi/Oixiu8wqlFLc+NkfkzBAh5Ukqmo1h/Ad64d5l7YjQ4qlc5XxaqGwErlybnerN
         ON6hK1l/GbvNxQm1P5XILYraU6knZJfEtMx/to2QQSDb0z/RcFQ1ij15IvLHUNVQSWNh
         V3+6kTYhlJve7yc6SUxts/sTtSbptw2dpb4LhnIy1hUwfYDA2YovKkpybF6FJuSQJHSZ
         UFsLgvN+VpXnLFqjdNDVaqf7qh3FrfSUKlHuQRAyoL3p8iAEY4CsCjeXU4TPuJtegUlL
         FGBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=9snvdf6nCkKex5Ppxa/UCk79Bkz6wJWonK0TKibNHGA=;
        b=nvlHfQJyF2ojlkZxffcYLmTofauIN3ppnqQ/erCp6ZBVG/qOQZiknOp0OE1Xcz1IlO
         v/YSqGX6G4cxk5Fxd1J4uOK5ninYwskRHQNwFYcO+aYZhE/18Z7rgxaoWaEdfsL8cERv
         XYVg1xAQXyHwEkgRIgTWeimACSHAsUjfp3cHEvb8EDo8eNOfyLVdP8H+tO15A51Ocpaw
         1s9Q4swXna8j5eUFo30XXanfWtNvp0SswOvPD+ZMFW8GSR20iUWQKgyI5/KUpCJB7o11
         s+BJ3Mxp6lnl2cfen/agJZpdNO9ZO0+k+219yoK3BwTSX4C8m5gRTCp+mkcKw+f5NiFy
         AQWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BJNAUcr0;
       spf=pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1687003985; x=1689595985;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9snvdf6nCkKex5Ppxa/UCk79Bkz6wJWonK0TKibNHGA=;
        b=q/x1dWVkKIPQFXeQUAhfJASEp5uk6onba+x8HrgGTait/SLnxrWafkagA1cRaQHWiD
         +cKcNR1YsIDRWvg4VzcU+hOdXJdZtxdtx9t4kvrnEIlRt5ongckD8SihL8+XeJo7hj4C
         zrFgW36NQbJGykqCXIIJc+4TvERK4e+28QYjAI/e/YDk3J3/CVSXWLp4J5AmJ96a1swd
         4ZQ0HQN/3a1+4hUOrWhoXo7FSrgS9ReOXrg8CIAxS2RMG0caAg6DZKhJutwlT0Ed9ku+
         WYSrCMsaHGZDgDapVnaW1faQvIVh0CxuBrAEUldE1j9b+30dG4HXaOoObTVyDpGDXF/2
         DoJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687003985; x=1689595985;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9snvdf6nCkKex5Ppxa/UCk79Bkz6wJWonK0TKibNHGA=;
        b=lBRjkD1orIe8MpV8ztalhHJTeIkeor6vLRbXsJUHqnrWY4wd5CqGxV5oa9+C7WTT+L
         sDZPQWYV8Ku96UnZCJUf32FT+oNP0DbZ7X66VCymXo7zUCveMTXdhlJdsjaIO9ilhlYP
         nZNqyPUANybgwpfGT9irsUzzhcF1zIM7WJDS/2hnWlx1b0XiZKA5CJihCoRbq36MLfYN
         5tMAMBhuw8O3rrdQnHc89iHkJcyrKCv6E5SlPvSp8kasBXthx06oZo7Cmja81yINRAUB
         1ilpLOgG7wqwaWylxL9dImo3Dh6L1MOjZnrynBOUvTevUcbBF6ueRNAfnTpUtVt9+9oj
         vcEw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDyhqrFT7NU7clJPdkzTWWLa8QZ/GnI/EnQzii5dCRNbLjY9WyM/
	YCQLD5rsl6vPDHsCmvOdy/w=
X-Google-Smtp-Source: ACHHUZ6cxxHEnlFAkz2lJsqJcyug3O31fA8C2qCeN5sORiCRepJo9YafyQj9Phec33mjzX+p2FfrbA==
X-Received: by 2002:adf:ea09:0:b0:311:15e0:1b38 with SMTP id q9-20020adfea09000000b0031115e01b38mr3741382wrm.49.1687003984082;
        Sat, 17 Jun 2023 05:13:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:61c:b0:30b:3044:3bd8 with SMTP id
 bn28-20020a056000061c00b0030b30443bd8ls104159wrb.0.-pod-prod-09-eu; Sat, 17
 Jun 2023 05:13:00 -0700 (PDT)
X-Received: by 2002:a5d:4f8a:0:b0:309:5188:5928 with SMTP id d10-20020a5d4f8a000000b0030951885928mr3716431wru.35.1687003980701;
        Sat, 17 Jun 2023 05:13:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1687003980; cv=none;
        d=google.com; s=arc-20160816;
        b=oLLFl8p5A3sTzZim3PXX+bSlWatjRs+Kg3+6ch5BT/HJsVWKUFkCyM6yGG29h3soQb
         eaqIIn/blVsEXlbp6eydCKiJU45yK2MJbZvL3702/2SO+ZKw1hDea+zerGbZNZ6PzCeJ
         Ia3VOMb4YXyECzxad05aPFwCbPb3cA+BPGf40urV/PUtg8jpdnzY3y6TwB6SnkLxVvsN
         jbWa2IxOL6h/KHVe+Fpmanc4JD8StHnRVATNsKolwipr3rPJZRk0St1VnjGnHJ20fXsG
         qvTpmLTuTZzuwgoAipA1hYbTPCfxwUiOrOeMBWoy9hanC9+v3GdFfcajHWxBq46u59a+
         jCeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bszGYXAPCfyFrCrKXBgf4DyEzlv1vS1+csO6wWtbX4c=;
        b=d+EK+WV4fKzs5OU4MVlLFdOcM6s2xsV9PiP7/EO3Xp2ZXIih5MAoBL25SSWVECt/8O
         J23asoVp3VN6XLbDO40HLehoYyXt/LEQgy4EpMIdePO8J9hgNOCPwrXrTD7L3my6Pa77
         mD7s1ZqKgtHai14sqaIpvjzeYVY7MyuBG1oTvpElDsunLPmQH0R6FRt4FkHQkKmjrtq8
         AUZcMISR9z+4yc5f0LQQqm+FkD6S0hcQULbjejT3lCZqAJr6DeMEB6fjXj45g6AHYjSH
         8rTnq49jRgsnYkyJmBGnkRUUh8dx3/jk5L2HM8S8hJnV6RsdkGjkAKnhTbRojCDSuatM
         CyVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BJNAUcr0;
       spf=pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id bq2-20020a5d5a02000000b003111816630dsi375881wrb.5.2023.06.17.05.13.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jun 2023 05:13:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-436-185vvMv5PdOOlfFYb8ORMQ-1; Sat, 17 Jun 2023 08:12:55 -0400
X-MC-Unique: 185vvMv5PdOOlfFYb8ORMQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 192423C11C6A;
	Sat, 17 Jun 2023 12:12:54 +0000 (UTC)
Received: from warthog.procyon.org.com (unknown [10.42.28.51])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 903F92026D49;
	Sat, 17 Jun 2023 12:12:51 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: netdev@vger.kernel.org
Cc: David Howells <dhowells@redhat.com>,
	Alexander Duyck <alexander.duyck@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
	David Ahern <dsahern@kernel.org>,
	Matthew Wilcox <willy@infradead.org>,
	Jens Axboe <axboe@kernel.dk>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	Maurizio Lombardi <mlombard@redhat.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Al Viro <viro@zeniv.linux.org.uk>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	target-devel@vger.kernel.org
Subject: [PATCH net-next v2 15/17] iscsi: Use sendmsg(MSG_SPLICE_PAGES) rather than sendpage
Date: Sat, 17 Jun 2023 13:11:44 +0100
Message-ID: <20230617121146.716077-16-dhowells@redhat.com>
In-Reply-To: <20230617121146.716077-1-dhowells@redhat.com>
References: <20230617121146.716077-1-dhowells@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=BJNAUcr0;
       spf=pass (google.com: domain of dhowells@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Use sendmsg() with MSG_SPLICE_PAGES rather than sendpage.  This allows
multiple pages and multipage folios to be passed through.

TODO: iscsit_fe_sendpage_sg() should perhaps set up a bio_vec array for the
entire set of pages it's going to transfer plus two for the header and
trailer and page fragments to hold the header and trailer - and then call
sendmsg once for the entire message.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Lee Duncan <lduncan@suse.com>
cc: Chris Leech <cleech@redhat.com>
cc: Mike Christie <michael.christie@oracle.com>
cc: Maurizio Lombardi <mlombard@redhat.com>
cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
cc: "Martin K. Petersen" <martin.petersen@oracle.com>
cc: "David S. Miller" <davem@davemloft.net>
cc: Eric Dumazet <edumazet@google.com>
cc: Jakub Kicinski <kuba@kernel.org>
cc: Paolo Abeni <pabeni@redhat.com>
cc: Jens Axboe <axboe@kernel.dk>
cc: Matthew Wilcox <willy@infradead.org>
cc: Al Viro <viro@zeniv.linux.org.uk>
cc: open-iscsi@googlegroups.com
cc: linux-scsi@vger.kernel.org
cc: target-devel@vger.kernel.org
cc: netdev@vger.kernel.org
---

Notes:
    ver #2)
     - Wrap lines at 80.

 drivers/scsi/iscsi_tcp.c                 | 26 +++++++++---------------
 drivers/scsi/iscsi_tcp.h                 |  2 +-
 drivers/target/iscsi/iscsi_target_util.c | 15 ++++++++------
 3 files changed, 20 insertions(+), 23 deletions(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 9637d4bc2bc9..9ab8555180a3 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -301,35 +301,32 @@ static int iscsi_sw_tcp_xmit_segment(struct iscsi_tcp_conn *tcp_conn,
 
 	while (!iscsi_tcp_segment_done(tcp_conn, segment, 0, r)) {
 		struct scatterlist *sg;
+		struct msghdr msg = {};
+		struct bio_vec bv;
 		unsigned int offset, copy;
-		int flags = 0;
 
 		r = 0;
 		offset = segment->copied;
 		copy = segment->size - offset;
 
 		if (segment->total_copied + segment->size < segment->total_size)
-			flags |= MSG_MORE | MSG_SENDPAGE_NOTLAST;
+			msg.msg_flags |= MSG_MORE;
 
 		if (tcp_sw_conn->queue_recv)
-			flags |= MSG_DONTWAIT;
+			msg.msg_flags |= MSG_DONTWAIT;
 
-		/* Use sendpage if we can; else fall back to sendmsg */
 		if (!segment->data) {
+			if (!tcp_conn->iscsi_conn->datadgst_en)
+				msg.msg_flags |= MSG_SPLICE_PAGES;
 			sg = segment->sg;
 			offset += segment->sg_offset + sg->offset;
-			r = tcp_sw_conn->sendpage(sk, sg_page(sg), offset,
-						  copy, flags);
+			bvec_set_page(&bv, sg_page(sg), copy, offset);
 		} else {
-			struct msghdr msg = { .msg_flags = flags };
-			struct kvec iov = {
-				.iov_base = segment->data + offset,
-				.iov_len = copy
-			};
-
-			r = kernel_sendmsg(sk, &msg, &iov, 1, copy);
+			bvec_set_virt(&bv, segment->data + offset, copy);
 		}
+		iov_iter_bvec(&msg.msg_iter, ITER_SOURCE, &bv, 1, copy);
 
+		r = sock_sendmsg(sk, &msg);
 		if (r < 0) {
 			iscsi_tcp_segment_unmap(segment);
 			return r;
@@ -746,7 +743,6 @@ iscsi_sw_tcp_conn_bind(struct iscsi_cls_session *cls_session,
 	sock_no_linger(sk);
 
 	iscsi_sw_tcp_conn_set_callbacks(conn);
-	tcp_sw_conn->sendpage = tcp_sw_conn->sock->ops->sendpage;
 	/*
 	 * set receive state machine into initial state
 	 */
@@ -777,8 +773,6 @@ static int iscsi_sw_tcp_conn_set_param(struct iscsi_cls_conn *cls_conn,
 			return -ENOTCONN;
 		}
 		iscsi_set_param(cls_conn, param, buf, buflen);
-		tcp_sw_conn->sendpage = conn->datadgst_en ?
-			sock_no_sendpage : tcp_sw_conn->sock->ops->sendpage;
 		mutex_unlock(&tcp_sw_conn->sock_lock);
 		break;
 	case ISCSI_PARAM_MAX_R2T:
diff --git a/drivers/scsi/iscsi_tcp.h b/drivers/scsi/iscsi_tcp.h
index 68e14a344904..d6ec08d7eb63 100644
--- a/drivers/scsi/iscsi_tcp.h
+++ b/drivers/scsi/iscsi_tcp.h
@@ -48,7 +48,7 @@ struct iscsi_sw_tcp_conn {
 	uint32_t		sendpage_failures_cnt;
 	uint32_t		discontiguous_hdr_cnt;
 
-	ssize_t (*sendpage)(struct socket *, struct page *, int, size_t, int);
+	bool			can_splice_to_tcp;
 };
 
 struct iscsi_sw_tcp_host {
diff --git a/drivers/target/iscsi/iscsi_target_util.c b/drivers/target/iscsi/iscsi_target_util.c
index b14835fcb033..6231fa4ef5c6 100644
--- a/drivers/target/iscsi/iscsi_target_util.c
+++ b/drivers/target/iscsi/iscsi_target_util.c
@@ -1129,6 +1129,8 @@ int iscsit_fe_sendpage_sg(
 	struct iscsit_conn *conn)
 {
 	struct scatterlist *sg = cmd->first_data_sg;
+	struct bio_vec bvec;
+	struct msghdr msghdr = { .msg_flags = MSG_SPLICE_PAGES,	};
 	struct kvec iov;
 	u32 tx_hdr_size, data_len;
 	u32 offset = cmd->first_data_sg_off;
@@ -1172,17 +1174,18 @@ int iscsit_fe_sendpage_sg(
 		u32 space = (sg->length - offset);
 		u32 sub_len = min_t(u32, data_len, space);
 send_pg:
-		tx_sent = conn->sock->ops->sendpage(conn->sock,
-					sg_page(sg), sg->offset + offset, sub_len, 0);
+		bvec_set_page(&bvec, sg_page(sg), sub_len, sg->offset + offset);
+		iov_iter_bvec(&msghdr.msg_iter, ITER_SOURCE, &bvec, 1, sub_len);
+
+		tx_sent = conn->sock->ops->sendmsg(conn->sock, &msghdr,
+						   sub_len);
 		if (tx_sent != sub_len) {
 			if (tx_sent == -EAGAIN) {
-				pr_err("tcp_sendpage() returned"
-						" -EAGAIN\n");
+				pr_err("sendmsg/splice returned -EAGAIN\n");
 				goto send_pg;
 			}
 
-			pr_err("tcp_sendpage() failure: %d\n",
-					tx_sent);
+			pr_err("sendmsg/splice failure: %d\n", tx_sent);
 			return -1;
 		}
 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230617121146.716077-16-dhowells%40redhat.com.
