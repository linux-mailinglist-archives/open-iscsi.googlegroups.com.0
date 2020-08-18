Return-Path: <open-iscsi+bncBAABBXFO6H4QKGQEC3WEGIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A9B2490E9
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 00:34:05 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id p22sf15427722qtp.9
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597790045; cv=pass;
        d=google.com; s=arc-20160816;
        b=iqZ3z90mv0/sNEWZthKXukNCXeLmr0Ad34JPzo5cIL5X/w0gX1spsm6tmqi5ZFB85H
         60oIuyPmdCui+qxDm04t+zmxnZVcA+6+WP/G2DvhyUpRMSRr6dphIEEPHfNkw6SeMZdu
         WnbC+gdJf6atUhTU7HuFQdHGYyJnDEEcKPlK9NgUopVn5ea/RSzt7y6ECJA6rd1O1EnH
         ZtqHzU8X7gmAF3eGlPiEN0zIGTvPfp6vbRUgLJzhQjyNfLh0nq9/Q9A0Zb4cdroWaBUu
         iKhItzryf7TBP5KqiQHEr7c+x5Rn0zfO5xIeulr8hEDdezTWMhwUM7rDKCVxlWLKgs9/
         gfLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=tKHvcsOln8DS6Cldd+vx2jg9hmdt44cP5Wn4n+u6kDo=;
        b=VuDPP9IHM1M0NGdi2WCK/aF3aQz2LYfZbRBGSDznzEFM4KTmCx3VQp4/K0LSXljqB4
         XIItA1bSzWPy4wZThNMa+hO3qSSusTPkj85KLuHH67CS1F78RQD8S3MCt5zAGzskfMjt
         fDX3zV+YmuH1BIkFZ3xr32MlU4cGbpSbAPKTNEH4WJN6XuXRz5POl+eMFtjXxA2QCGff
         LNxKSZ2iagHDlYDQ1AadfQS9dRiyJLpsh+9zMEcQYXMHMWDyo+eQB7nbfG0rUthFDLmW
         ut98utWkeK4FPXrcqvXW/R9KDqU+yR3rk2y1yaKuVPcwMX/522IWmnTWH6AoUQ1NYrBd
         C4nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tKHvcsOln8DS6Cldd+vx2jg9hmdt44cP5Wn4n+u6kDo=;
        b=gxxQY+CfVacbjXeqs9EAB0hTUXiKf9lcI/BaK+PCLqmdlk+ZFqEODEC2n/8qRxsYYc
         rfqY8yoEuz8YYiZxl96IGdAGQ1vjb/8rA4K/RMCXEhkuyk1ClXVNevyZujDKID+6YgRU
         I2Gd+2LkWlyCxWQeLS3CIUDLbJge2/cHyKdM5fR+ZUpQHn5ARkiHDqZ43eGxSicbT8L3
         mEGBI89t2EWP8566b740V6T0UVX75z0bnfHvG36xbvogm+Jw5b+3JHDdg8UOKZuu7Gdx
         70wd5g8AwY2eHmQ9zXmY3HOujtUNc2dC4nHY5clCAJh1e8E+DX/WJh4HBFlRehwgyz2E
         OHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=tKHvcsOln8DS6Cldd+vx2jg9hmdt44cP5Wn4n+u6kDo=;
        b=dK4V4Mc1iEyJhDANirHU+2oGYHh2cVPDPKT6ApJ3ickL6x5gD9aTqZ14DaAvsZl+1r
         b+uEe95iK8ELKklCzruvsOnJNGHJSxA69rMgA4UV+Y9z/+tg/e/B23W7IASrp3fs0UZE
         BzuCvTC/47lGmTwLBr8NZyBPPXHArudle4jBU6qBUaeFOflcR3OUah2jyylOmjPnh+Hd
         VYzFCRMmSDb+GNjlXH9VjbKbCz/UvJ0f3G1PF4XDK7Mk68ag+Fl/UnXsRuieRX7RkK9j
         Rs5hII4aHKp2oghHVHndr560dwQ6+H3a2F2vs392gCruQxeDkB6khA6nitkJ9a+8x6nl
         L7Dw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531GGZixZnAbXuKnou+wXwaUwkvS8Hvbrv2pB//yZ6+YLcxw8DM1
	HBiGFfhQF5t3X4oj+ei0mXE=
X-Google-Smtp-Source: ABdhPJxZOYvwBZ+c6cG/3Zz6TYwUiORJorMs8+tIs90W9leVQHYDx77DPxBZorWn3zWVqrEWRyXyOA==
X-Received: by 2002:a05:6214:1742:: with SMTP id dc2mr21963760qvb.90.1597790044841;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:f7c6:: with SMTP id f6ls5455416qvo.1.gmail; Tue, 18 Aug
 2020 15:34:04 -0700 (PDT)
X-Received: by 2002:a0c:f74a:: with SMTP id e10mr21673730qvo.128.1597790044690;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
Received: by 2002:a05:620a:696:b029:102:b6b:b400 with SMTP id f22-20020a05620a0696b02901020b6bb400msqkh;
        Tue, 18 Aug 2020 05:48:28 -0700 (PDT)
X-Received: by 2002:a1c:9c91:: with SMTP id f139mr20201261wme.134.1597754907642;
        Tue, 18 Aug 2020 05:48:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597754907; cv=none;
        d=google.com; s=arc-20160816;
        b=FabUkM5bFoooBNkPfwP/KGOheXZ4qeqrsbSCfDCo5xzbHvHtwaBxIS/qrbmNecCW+m
         xvXwWBXd8nAi2A93pazjZJEHKVa/y4Gry/vqCyYWJI2TOqixMLcy8VNGO5s1lis8yEph
         ZeMghzPIFmoT/calmu4/YDkrDIAs6PcyjrTioy8YtJUn3qYYquoo/0rgWypTB05CUgSA
         hpqaOPX3Zvf5erl5EG5cdSnLPcQH7iVGxBMUhVNPJt35NGSAwztMR1aNeOjMGgFiZULd
         56B0qZvu5/RsU7AtpdAayeu+GWLOYIpf8V/OQSUxwbACXjdrQ1oSE1HUBeKBDH3xoBWJ
         z63g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=99mx7mNAMvSAMsnNjk7WfbEPMgEJl6N2aUMpizxR1kY=;
        b=Gbq+KgiqiI7R6JnljYAUD4qegQF7EBR5xOZY74N3uR0pms9noT/6Vn/CqcXuIlVS9g
         N5Z7m/TAtNIZ+zyJoEIapLMVLPzywvKAyQT5aFnEuTufvUQCD/N0L59Hu6RhUUE27gUy
         LNBi472LnrrMjtlCPg3R6dD5UE1nVbpuOIQrVPaHKNJ9MNHsBLBrqiut2sLVWSuxGFCb
         gLICaGEckx2IJ6KXjaiOiyGbhwzAUrLpU0XOkr0T0aPY+AVaO3Nf+xEWsuxuJXeRbxuP
         301mhKF10VERwdOjKdGrv9EWexbWdSMolQAz9+SIzVvGajj+jhZhllymuDd6rgdoSn1h
         BMZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id i11si828811wra.3.2020.08.18.05.48.27
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 05:48:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 0CF9EADF2;
	Tue, 18 Aug 2020 12:48:53 +0000 (UTC)
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
Subject: [PATCH v6 5/6] scsi: libiscsi: use sendpage_ok() in iscsi_tcp_segment_map()
Date: Tue, 18 Aug 2020 20:47:35 +0800
Message-Id: <20200818124736.5790-6-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818124736.5790-1-colyli@suse.de>
References: <20200818124736.5790-1-colyli@suse.de>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818124736.5790-6-colyli%40suse.de.
