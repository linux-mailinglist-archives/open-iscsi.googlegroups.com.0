Return-Path: <open-iscsi+bncBDLPRE656MLBB5UMXD5QKGQEBCKMQ7Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A174278BB9
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 17:02:15 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id 26sf1114768ljp.19
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 08:02:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601046135; cv=pass;
        d=google.com; s=arc-20160816;
        b=xg0Ib/5r00/sNyGFvCfIrN3RirxmW4rgtyE1vsDo49xV+gIGhbPpQM0XG5eYHKNwur
         PikrPSfqUCR4kS3P2mj3TkEYDOkOXLB+iPG1chjN/InuNKZ7IrYZgTfZESHVW7OH59o9
         aJRVCQX8pu3t9hoHruXUyFYDmMfgyKgGlDs1ETXQoNFgd8NzgX1/PTUTCom09MBYGsNe
         Q2daGCu6dCSdxHGOyQvszCgtjVO073dsITlgCsXVvVYt59euU8NzIfOaxAcJidaAmvXZ
         zMpH0m2ajlcMQZ1IpngAC3f0VUsuhEZyz6g+vEu/0gqweGsg6LVdKeeIBE902YCOCqmo
         m7/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=lm4hWnuik1vw+upMqz1Jq8revxcSUqWhNZSuUWb1Lzw=;
        b=T8PnJj9tQMv5MnNLAzhGTO8kzwDCUBjjbeN8DOVk8OXPPXaAhTfOievdLUHKVhXpyB
         l5z6x7oEH1dq2CV2B4pAAlfv5+uPJ5Im7vZ4dzYYqZHy/a3Yrz9C+GmijLj4cH5oZk+7
         AZNV97Ck1fdlMzyAx/x9sC8MM1yNPsIeTpB7cHMwAkYskmHh9G1WetMLDgHNMAMPXwWa
         SWl5TKMV2ZAg33QULajHbDNhng2egvIYpZd6G7Wrh+S1UaBeTvyY8skzkIeNZqefFPW0
         RvF6NCqkkAoOfC/426kizjftCRt3qmr3u1A8eZW9PUuu3x4OmoHdVpCiLmxQCs7RnDaN
         HoMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lm4hWnuik1vw+upMqz1Jq8revxcSUqWhNZSuUWb1Lzw=;
        b=LhjJEbZz6Z+v9U/qPWSk2kNDJDuThBkAcPyy4z4xf73uie0sJcbcqrxEufo/pG1hIH
         lCinCf/mlJUbE3eyyPCeeCHh+fTPVfGHyUIzGVMIUuieGAeavw+O+nYanwLt5E2J1+nO
         XEhciKPLrwVeoTVAXzszhRSloLleWV2KMK6dMwOnz7I8+/1UkTtP4Cto2kSMoRCGFz3G
         N07Y0riHOsh6atUN4s5x+egQRtKqfgROOEpjqqEGmnKAHZ7xlKKT0qNriuZD7JMV7Ngw
         JeKnPtviCrhSOerFBRobInf5po5IH7Y10iENVKsDaXMEcUyYp2mQSjDUzhlW9gB/VogD
         HPow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lm4hWnuik1vw+upMqz1Jq8revxcSUqWhNZSuUWb1Lzw=;
        b=orzEkuZG9t9EzUGozSditTgzlmvVlegWtjkEGaAmX5ReLSPL18WN51u1ZFWLg8yJWu
         y+ld04W01nLSy47VT+kkfabmn4ULUwKt0DpWwxs+KoMz88pYobFNn16cFdxCYmnp94St
         /owPbXg4Ywrh7VWiGkuOE8iLsoT2yaawZSKqRaPMvbn3aGTqqM96LxawToH3kNeXLVXr
         oUbuN403NYK5mj+W4BtxkUa4+7VorV9qyDLnQoNMcv0ZDI7KWvFzHyvYMqfrEjlnTS+x
         mrRwHXkDKuS69gOakBGl8kqUW/SEAuibQhgiKvcb2AROILxZAyHdhg8JNvdEgAPxxfY4
         h5OQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532wvzVkrBepYz2HlAcTLBfKMVDsEQ4qN1xjPqWHffWXrl0Yz6v1
	sX/0FM/pqP9NEeK+7DITau8=
X-Google-Smtp-Source: ABdhPJxqm8sUMtirjqZOtjWpYbXLNKiqiBQDGfYBe8UUa0vU4liuGRqUI7MYssscXHYnEgnL6icsDg==
X-Received: by 2002:a19:848d:: with SMTP id g135mr1433127lfd.56.1601046135017;
        Fri, 25 Sep 2020 08:02:15 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:3c13:: with SMTP id j19ls432103lja.10.gmail; Fri, 25 Sep
 2020 08:02:14 -0700 (PDT)
X-Received: by 2002:a2e:b8c8:: with SMTP id s8mr1612347ljp.127.1601046133948;
        Fri, 25 Sep 2020 08:02:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601046133; cv=none;
        d=google.com; s=arc-20160816;
        b=leYCgb16/i39G3w+KzzLS/BxEt/WWtq3a8uI82dJKbsnr0VMacEwdwiadJYYyeOmmd
         WqDlKBp1cXsykGl5T9T41AMZ+XnbsEgYjRfPbscyrZBydTBM+v31gSLKY7h5vjqcN4oR
         JeQG7TXNiPTPUD1fI82MMLozyRT4haZ1QVo0D6eqMT08c78Tj5hDLgN9i7IHxaeyKl46
         PuVT9KQ2WV1bl6cPMLeuSy2VKJ2FjLLMwaSkm0tGun7hU/X2bgtZmM0i77/kL25GLvig
         ep4tZzo9lS9yZiPTMt727B2Wtri2ouu7l12FrjiYKZt12CnbBhwta2rSJw9XDxtaDkDs
         ueUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=M4fA2b9bJjB8M8DBgl/Jx+q9b/T5uuCWTyeE6GhZSEM=;
        b=TH5GezLRL8I7RN0a4zkWP1tv2sdwAh6WI1IG3v+oWTLDHlkJAvch1rdHgfFp2Kw43P
         +Me926y4UrXkCvn0K6n19JcaMpf0K5m58bqeTJ4+eNH4jXAF+M0Qqo5Ee7jOTsC9mDlX
         4xTzT88KVgUPCFyVEi5Akqg6hhSQT41zwK38dP1v+Y4eDklp073de4L1OKoLzGn+RqcH
         cmKm0xmngYxepkTF/4JYgrZU4pjRZUiIc3VNfUiD4GRAXn5eFPyw2cnYkJ6EbhXXp/uY
         Pc/C8mltCGHyTGADUdToOafZsmL4zbntifmo9dFSZTir7T+/uW8bz5jrebH8ltHDbuqQ
         XdiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id r6si98079lji.4.2020.09.25.08.02.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 08:02:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 532C7B011;
	Fri, 25 Sep 2020 15:02:13 +0000 (UTC)
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
Subject: [PATCH v8 6/7] scsi: libiscsi: use sendpage_ok() in iscsi_tcp_segment_map()
Date: Fri, 25 Sep 2020 23:01:18 +0800
Message-Id: <20200925150119.112016-7-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200925150119.112016-1-colyli@suse.de>
References: <20200925150119.112016-1-colyli@suse.de>
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
index 37e5d4e48c2f..83f14b2c8804 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200925150119.112016-7-colyli%40suse.de.
