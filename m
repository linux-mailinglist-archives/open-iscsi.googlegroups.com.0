Return-Path: <open-iscsi+bncBDLPRE656MLBBIOJ3P5QKGQEGIVJE5Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id C02E3280ECB
	for <lists+open-iscsi@lfdr.de>; Fri,  2 Oct 2020 10:28:17 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id w22sf290382lfl.13
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Oct 2020 01:28:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601627297; cv=pass;
        d=google.com; s=arc-20160816;
        b=IXCOv5tk1vbdeKVYTJe1A5BXg/jBXN9yq7xY+JH0TkJkQgYLLB10Vr7keViajShpC3
         DFVhJ9sB02LnOdVeIoxbJq2hl9b9xOLoSPFcDGLZpPimLCu8EmCggi0WtQLYjY4ZRZMz
         L8/UXuKOptU5GOs79/U+g7lrzngMZewz6P12C2sQJvCluunHCM4Y6gxsGo0/nFRzF3Ci
         VP+OjGylahHGRk6MxvQukLpxpCqDA3Kn3/HU/X7uII8+fmZrl/1OOaAKnKzbBOWD6uPl
         Qw53bcVxIac953CHs7ElPd6rbmkk1G2IHIzt8f+Ab+N9u4M2dH1R3ZsIDMpYCCrbz7+V
         7zCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=MZ0VdcrmR1NAl5XkcC2oRwD81/BPvOa+LVIkn5F6Uq0=;
        b=f3eKruV4ROfrSMkB7cOuto+CYqWFu1KNOb7krNJllDA0ndyajTkWcx+tzR5JXS2CYO
         UhttdXKp5QhP+5ce4vyczMkD74g3fBf8KkOmN3839DYvuTpXd7ZdVc83Mt6XxO0Ugmhn
         r18EIbL8tlT4z26YQPv5LWUG03Wwmxzt52rXBG0eaGy57+QvWoA3z0NACBQxIqXTmz1o
         N9RIm2oLT5uFR+caBkdakTWUOLDvsbE2tzit/0NhCaVQUUx1T4Ob3u4ri4QQS2hyOl4e
         onHZQ/05jlFwyLBimsfk5QBRNyJvixxUmRp9pBnzmMIAz/9ChFZAZqGSvv7nSwoHqS0H
         NTTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MZ0VdcrmR1NAl5XkcC2oRwD81/BPvOa+LVIkn5F6Uq0=;
        b=X0lGfXtHNXLTUXu9C/1poaS8gy87ZlEz1yTfqOefgN0XbatNiXBhTFrMkg6QT1mi42
         G5cJtS9i3ubmfZDIrWNYr8pwTas8goET8DWPSDX9mCdYpf39OmWCX3Rb0TNoQ2zpyKOt
         ruf9piTl9vvWh7bSRX9mXahsGpiEdDBVLVPM1ADak0RHjx3m4Y4CYgprdIaS2STtjmv3
         eQrD0NYri8vFp9tYaVE+1Ox0ABMZ61xi6sksqvRxl0HGGZFkuRlkZvLdxv0V6Dovurcs
         o7sYfMKywCVyroiKFE+97P+ho62xCRsQcamru99TbKLOsn6SMaBiDEB+uAdAivil1upf
         UPJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MZ0VdcrmR1NAl5XkcC2oRwD81/BPvOa+LVIkn5F6Uq0=;
        b=Ak+0nzPDS6rBj7pvWH6nM8JhZmQKs7tSZH4P6TmsgUtZQKiCgmsm9v+Rg9gYFKC3yM
         say0OUDxrT924inybezI710Pj9ZSEuJ8U3Oy0W8UdkE2Ruchw2PmlNQHnGeOBw4tA+Xo
         uQRIqyJTA04vfOdvBalcaUvkH6yTgOFQWfnbqKPF8kAiKKfkbq3WsWeGsCsS2oZp4rsT
         jF4IhB+mBFUIS4CdEizP8fedBUqEDP6HP+AsZ1751aDS7eFJEH2X+yKWH/wFIdfoxCJs
         5crZDS0i2WpcyTfEbNlrV19RHBgGqGongezmPGrsG9j21M7/TN615+foZ7+cfUD0aICM
         yH9A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5321u1ANNUaEmmzw4XrRUV7hOJJ3VySiIgBl4k/tOd0l1TKQIaq7
	EWZj/TJhWKVL2MumhkbXmeM=
X-Google-Smtp-Source: ABdhPJwjwzNwxysEFmWsedG8IAtB0cwRxV9K9t63p8YjkU+4rzUMkoB1gDSfOe/QQ5wml5vfSqVBQg==
X-Received: by 2002:a19:89d7:: with SMTP id l206mr520111lfd.110.1601627297324;
        Fri, 02 Oct 2020 01:28:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls154782lff.0.gmail; Fri, 02 Oct
 2020 01:28:16 -0700 (PDT)
X-Received: by 2002:ac2:522e:: with SMTP id i14mr516356lfl.82.1601627296063;
        Fri, 02 Oct 2020 01:28:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601627296; cv=none;
        d=google.com; s=arc-20160816;
        b=T2pKhkOzZcUrbkAsa/qvm+SLx8eStT4QRLZi94aqw53EdjhDQDP9E1ALj04jDjl0s5
         zQpPCf22L+KC/+Gy382gpNV0khSjbyrEHfITO2f9RpqkP5THOPBxN5PiYnEw7j158wXe
         JzcjNvzbsmOj8I/fsQB1X4pZZJadT75NNOx+hQXm3Q23Mi1q2968SmD3ZQvLtC+BUMX8
         QEQ5GwkyATCG+6lV+v2EkkVc4fLF4p1QkS6I9LXfeC/ynOjMknLGzARJgnT7yHu+M72P
         Ci1Lf7Ba+cKPGqc65ZKrA0BqbEY8a/izoSBbdJDkjpqX/nlZq9kDgyzjtU7mpjFyjw4F
         rZKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=jlP9uJs8N1dLuhXyn9htTbd+21VDbVbTbOTVrTcNL7Q=;
        b=cwbKebu8yneuHRgQWyLgf9/n5JdVHPX77kIgvp9Zs5DtDr6NDP/8SqvNBV+oXeF5o2
         UphD9SHzSN/deBpnVfvVoFU5xdSbvdDFhStMcyiGLZPdCl1ZEtPJDb+KsGkUr7/FPNwh
         PHh4ylm48sTDR+cwlh5Y0PvSK1UBhskfgr9v/FHXj3IyidtgptMKyGb4H9WjzfJop7V1
         K6YuQA0iXQMNyE/yylAzA1qhr8UbnBKs6P6GY4KZ4SQaxjtZfgogbTVxw0nhxqHGmtVh
         MIEUkpM0jTLBtgyvGeb9E1g5Bs3ZJQV8lFracjXvDjpwNxSOKcCd2/vMOF6vhBvu4WG2
         Q2kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id 21si16118ljq.5.2020.10.02.01.28.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 01:28:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 5843AAD31;
	Fri,  2 Oct 2020 08:28:15 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: davem@davemloft.net,
	linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Coly Li <colyli@suse.de>,
	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
	Christoph Hellwig <hch@lst.de>,
	Hannes Reinecke <hare@suse.de>,
	Jan Kara <jack@suse.com>,
	Jens Axboe <axboe@kernel.dk>,
	Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
	Philipp Reisner <philipp.reisner@linbit.com>,
	Sagi Grimberg <sagi@grimberg.me>,
	Vlastimil Babka <vbabka@suse.com>,
	stable@vger.kernel.org
Subject: [PATCH v10 3/7] nvme-tcp: check page by sendpage_ok() before calling kernel_sendpage()
Date: Fri,  2 Oct 2020 16:27:30 +0800
Message-Id: <20201002082734.13925-4-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201002082734.13925-1-colyli@suse.de>
References: <20201002082734.13925-1-colyli@suse.de>
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
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Currently nvme_tcp_try_send_data() doesn't use kernel_sendpage() to
send slab pages. But for pages allocated by __get_free_pages() without
__GFP_COMP, which also have refcount as 0, they are still sent by
kernel_sendpage() to remote end, this is problematic.

The new introduced helper sendpage_ok() checks both PageSlab tag and
page_count counter, and returns true if the checking page is OK to be
sent by kernel_sendpage().

This patch fixes the page checking issue of nvme_tcp_try_send_data()
with sendpage_ok(). If sendpage_ok() returns true, send this page by
kernel_sendpage(), otherwise use sock_no_sendpage to handle this page.

Signed-off-by: Coly Li <colyli@suse.de>
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Hannes Reinecke <hare@suse.de>
Cc: Jan Kara <jack@suse.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Cc: Philipp Reisner <philipp.reisner@linbit.com>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Vlastimil Babka <vbabka@suse.com>
Cc: stable@vger.kernel.org
---
 drivers/nvme/host/tcp.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 8f4f29f18b8c..d6a3e1487354 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -913,12 +913,11 @@ static int nvme_tcp_try_send_data(struct nvme_tcp_request *req)
 		else
 			flags |= MSG_MORE | MSG_SENDPAGE_NOTLAST;
 
-		/* can't zcopy slab pages */
-		if (unlikely(PageSlab(page))) {
-			ret = sock_no_sendpage(queue->sock, page, offset, len,
+		if (sendpage_ok(page)) {
+			ret = kernel_sendpage(queue->sock, page, offset, len,
 					flags);
 		} else {
-			ret = kernel_sendpage(queue->sock, page, offset, len,
+			ret = sock_no_sendpage(queue->sock, page, offset, len,
 					flags);
 		}
 		if (ret <= 0)
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201002082734.13925-4-colyli%40suse.de.
