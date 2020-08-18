Return-Path: <open-iscsi+bncBAABBXFO6H4QKGQEC3WEGIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id F31AD2490ED
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 00:34:05 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id d1sf14299588qvs.21
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597790045; cv=pass;
        d=google.com; s=arc-20160816;
        b=l43YR5Su1ucVMa22t5C1JaqDqetf3uci8/f267RJYhQaVyhuO/Rdv2pu2aWZwLh9CN
         f0frLqmEozYa3qCgLQh+eCgXtDHY5DKCrmQlum4oKgHgClj6msFxrmXKxprQ3bNcSj+j
         86CsAIiKcs1/73CP/VDNPGg1/Rl/d0TSI+eTK41Mf1OucrVWjzMa6M1F/HOY8TBhYdbk
         lhMklZM+5miEs1n7E0EvJQI2QiCDtDJ6vl+r9tY6mlqKYNYV3ULAZP6+VreJ5PazUarN
         gJgwzdNpVDJnwEY3aMuNFICdVKKZhZBGCy9NfCTWNc4n+hYx1/0o3gPB8SXhNvjNLLW8
         lgTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=3hQcjMSejhGvMy82odvCNgVLnZRZV2LxoZ9JGbPb8z0=;
        b=z2s9HRHWuuNYQhgWUMsz83dUP4eTQpEIh7bS0Ey/FyM1YmlYCJmw17Py4WnJeSuBwH
         kD4CtApSmWnxVf7EfO2/L0Np2GA4XdaNZqyuOVYgt3v3t3bkcMDE6fiSpBG0t0sgI3n/
         YfRxaLdg7e5v3gxUTEeLBXlWxhhVdrI/WDs/pCPrFZ7LqLBZ3RsqmRHRiYDq3kvEmhyv
         kEmKocaKz9zYVbKT/UkWOBm93g4r9RIagSFYmZDXdgAqWnxVWDgoj8xP+zOfQPnQLQBC
         lBwFZhjjri6F7hQO/W1duRygLt6wM7P9jPIMT4HSsBjk13rjRrTTU6M77ScexIcOO62X
         weGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3hQcjMSejhGvMy82odvCNgVLnZRZV2LxoZ9JGbPb8z0=;
        b=CwAJtbSDo7cwnUt1wEc+9OG5G0FkpMOvcstgRa+NdPM4ct6yOaLUfFZQSdEc2ORugx
         0uLyBpDGp3K53FXyhD85WAPicSvbBiNsiBp6LQFta1PleSOSU5sPULbb8aJP6UNRHlKF
         Inx8LGx4+8KduHotuf3og9ZIuPqpsfUl/IKsnhrBzqoScbIqjSXd1Sn9K9HRHEpLoVPI
         fXWKYVC5UZhV1YZJf6Ij63xUiFRNoSBy1d+UVJ/i9p2fj1m4WQDRN445HZ+dMJ/H0Ugl
         /3ngp4n7eDR2uk50KryWPoLYTd87EHRZ9PS3Z9dKcQTqfIrxlFVOG3WfIrsIsvM/4Jpy
         m16g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3hQcjMSejhGvMy82odvCNgVLnZRZV2LxoZ9JGbPb8z0=;
        b=KI4/7fSd9ZbHwhAuIYDnn95eGGxVEMmpG93irtYvfDWn2H+9fAwWFHJUjLoYsnQyty
         qBhRn/ts90uMryI1ITQ3YbuhSO+qbnsjlxZMp+HspKctKYCfzB+GYGY45BYuRyqGdxlu
         WgBGLG/yqF8h4R42QeokfJfnuDhKpXgCX1v9g/H0yVyhEqXpoD4u6csX4q4BbjnA/CbF
         4d8WJJwJFqgXQsbkSAliijWakJcqlc7vfrr7nRxCZwzLTUatVs42H7Kx5Cccy0jyOadj
         kZw5dgpzJdvI7tMaDlKgYeo8fd+F7juuY8wuqXhmq72iR7kyFJRTxAIukFQnkqZDZVs7
         0wMQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531IV+gefRJPKiWTRMg7MzrhMok57GhM7VcR8DFF0RS7Fa5q1AHG
	L/aJlG3Hpn1bZQwDi3DqOm8=
X-Google-Smtp-Source: ABdhPJwCgI6/ia/2+E+hGl12Hk2jOJcKEVSLoKrLWyalVMRKm9EZxgXj2v/ezNVwbUfpCQ7pIfSowg==
X-Received: by 2002:a05:6214:18d1:: with SMTP id cy17mr21147502qvb.29.1597790044854;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:eb0d:: with SMTP id b13ls1320562qkg.7.gmail; Tue, 18 Aug
 2020 15:34:04 -0700 (PDT)
X-Received: by 2002:a05:620a:1355:: with SMTP id c21mr19866329qkl.378.1597790044685;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
Received: by 2002:ae9:c316:0:b029:105:b637:9221 with SMTP id n22-20020ae9c3160000b0290105b6379221msqkg;
        Tue, 18 Aug 2020 06:13:34 -0700 (PDT)
X-Received: by 2002:a1c:e0c2:: with SMTP id x185mr19148849wmg.124.1597756414156;
        Tue, 18 Aug 2020 06:13:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597756414; cv=none;
        d=google.com; s=arc-20160816;
        b=qXqYYc2wPgvgCUfacNdqp8e5uPG9Ey4YJdIqo1+w/I5I8dQShbAB/SBdxNwKWP9ruI
         5bNulMVNcw3Q0Zop/LnCo2VD5vvA2pXOZK12Qsr961NW3IXWEFQx3nX1Uu0BHBFXTGdD
         HZV9uXvUUUPnNmF4Gd8DpGZ5rsne74mzdxR1byH3QHZrLnT6Uasr6jZfvEDB9cnBQabF
         Ft/kC4uRm7FF97Axpkp7BuDrv4mX37Hv4OH8LZ00j7rXMzOqrGh3nfqfz/g52VBpBUqu
         ejK1hig5I0wUSR1SVZkQxH3Locp2/1OxSBCv56NmkcBBevLHcOx+BX6OLHICmJo6g+oJ
         8rKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=99mx7mNAMvSAMsnNjk7WfbEPMgEJl6N2aUMpizxR1kY=;
        b=a4s7dn43pmRICOh0kTSp6p46nRbqhVsPBJHFL/ttsvnQdMDxsWrr8ZHYQ3Gz6cBBeW
         Zc+PPwCm4H+RS7k6R15/SXD7djQNd4m7EbnAwumSvt8OsQFDjh5c0UuSO1qco5mU7NjH
         8C220mDMKLP4HA/veiZvN9SWLp8rYTJz+tMDdo6xtatVADSwiRnolC43zyBW1pOqndXl
         MaRtwgA0nhlQrvjBY1HRAluRZ0L0PdB6/eG6C6BqBZFkRmZIN6AEVjXbII4sTx/xNXT/
         aKvggEVS0S5M8XI9YHoQuC7q2AxOjb7ukD+s86vsuikpM94u70FPinmTLrQqM+HZgBpW
         Q4tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id i17si588706wrw.4.2020.08.18.06.13.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 06:13:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 929A8B17F;
	Tue, 18 Aug 2020 13:13:59 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Coly Li <colyli@suse.de>,
	Vasily Averin <vvs@virtuozzo.com>,
	Cong Wang <amwang@redhat.com>,
	Mike Christie <michaelc@cs.wisc.edu>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Christoph Hellwig <hch@lst.de>,
	Hannes Reinecke <hare@suse.de>
Subject: [PATCH v7 5/6] scsi: libiscsi: use sendpage_ok() in iscsi_tcp_segment_map()
Date: Tue, 18 Aug 2020 21:12:26 +0800
Message-Id: <20200818131227.37020-6-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818131227.37020-1-colyli@suse.de>
References: <20200818131227.37020-1-colyli@suse.de>
MIME-Version: 1.0
X-Original-Sender: colyli@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=colyli@suse.de
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

In iscsci driver, iscsi_tcp_segment_map() uses the following code to
check whether the page should or not be handled by sendpage:
    if (!recv && page_count(sg_page(sg)) >= 1 && !PageSlab(sg_page(sg)))

The "page_count(sg_page(sg)) >= 1 && !PageSlab(sg_page(sg)" part is to
make sure the page can be sent to network layer's zero copy path. This
part is exactly what sendpage_ok() does.

This patch uses  use sendpage_ok() in iscsi_tcp_segment_map() to replace
the original open coded checks.

Signed-off-by: Coly Li <colyli@suse.de>
Cc: Vasily Averin <vvs@virtuozzo.com>
Cc: Cong Wang <amwang@redhat.com>
Cc: Mike Christie <michaelc@cs.wisc.edu>
Cc: Lee Duncan <lduncan@suse.com>
Cc: Chris Leech <cleech@redhat.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Hannes Reinecke <hare@suse.de>
---
 drivers/scsi/libiscsi_tcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/libiscsi_tcp.c b/drivers/scsi/libiscsi_tcp.c
index 6ef93c7af954..31cd8487c16e 100644
--- a/drivers/scsi/libiscsi_tcp.c
+++ b/drivers/scsi/libiscsi_tcp.c
@@ -128,7 +128,7 @@ static void iscsi_tcp_segment_map(struct iscsi_segment *segment, int recv)
 	 * coalescing neighboring slab objects into a single frag which
 	 * triggers one of hardened usercopy checks.
 	 */
-	if (!recv && page_count(sg_page(sg)) >= 1 && !PageSlab(sg_page(sg)))
+	if (!recv && sendpage_ok(sg_page(sg)))
 		return;
 
 	if (recv) {
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818131227.37020-6-colyli%40suse.de.
