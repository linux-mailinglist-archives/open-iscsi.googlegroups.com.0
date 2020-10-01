Return-Path: <open-iscsi+bncBDLPRE656MLBBUUW235QKGQEJJAUYVA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5059727FAB5
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Oct 2020 09:54:59 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id s8sf1692257wrb.15
        for <lists+open-iscsi@lfdr.de>; Thu, 01 Oct 2020 00:54:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601538899; cv=pass;
        d=google.com; s=arc-20160816;
        b=MxwXVVtg5seNefdMu4S1AAsp4gGwZ6Cuz/FIhKqan24d+C7z1utBB4ksr0cip5viXU
         0KNF3vbMyMc7VrgPonnVcNTvdlpLN5Ylq59jjMiS5BG2hZ80FWHdcQNDP0jUN2E8K1VA
         pgGI0oWczWKDmddOFj2mAxSGEF4UWOnQK8jXF+6U3swrakQlrI2oOvvsmQktg1t0YUgo
         2woZKtGyGmtT4yj1K9+LKweMqHVEf0Tfm5CgZUfy22UUXpswSIRzwO8edRnFzyydYOng
         Mltpk/nqgPOBG3eCyeQe6qD6ysXXOOhVgpjse3pwO9qYebxbXEXAR81BHTAh+GiKAenm
         UrKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=kPoc7Y5ErsQ0cHmlKB0GBoskL2Bd7mjGWfQLruKe4Us=;
        b=efuD9dcdUGK9f1EMRYKHxfqhXb8/UB4hAAU67E07s2HxLrz8QWM+4hMg0ldruhe6rI
         xPfc9s0dMkjnhJw9dO8bw2DzAfmfyUEmwedic1N8SFcaUFh98dRildqH2wt/DccJ9Fwz
         5A60CUPW20WUk9xiDsAPeIMQqMwSnzSCR018ovHA/plQQNoKlTFmXi9EEqo4iQ0w8vSF
         S0X2K0yjquB25I0iZtWjGrKgvk55COHMkGnEBuu4klGqHB3JHpEGN4stSxm9utWwoAqx
         hQ9nG2VZ6DX3i57LVx1sNvWo6iAHMXN1sMU6bt8LbHTyFW0rUIN6oPMVzXyD4vaTyFzc
         nlvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kPoc7Y5ErsQ0cHmlKB0GBoskL2Bd7mjGWfQLruKe4Us=;
        b=jPL34AcrD5CjmJYgnKePzgZ2lSBsRsOFCwnHVg0fnBVgwftTd+5m6FyxEI/9Hr0Tmv
         6aDGONSMrz2JGl3LqkaKddMCNCrtR3hH0gpJkt4Ig1RaYDwTuvu0Tmcx46Ijs6jbcdk9
         pzooRUQmAFvvjyxBqCBkX8T5esvW2K/S7ghRfpt1XHPNsyD7jXi+dFFOzGqf8pTgEAN5
         SOzxQVHTS32dZF9tZ744DBnxey2bxoYLXe56EQec8zBYr05lhvPiS6j6KGQD1wG9bSfl
         2uwYDBx38zJnWGI6+YsC7KdRDfhpnAsTMAPy9/t7D/N2rQFHXHHzFsk5BEpQnxhSuvHm
         akqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kPoc7Y5ErsQ0cHmlKB0GBoskL2Bd7mjGWfQLruKe4Us=;
        b=g2v6qERLrAINn3fht/PfipU8qdzSb3syJPl9wPUgbsuS6VDaAHNLGHS2rk36gq/J0h
         0i+9rGpvrYnPxId9b5NxUmzCwy9FglE8zVIe0OejrVAJlRJYpjzRCVef4uT9I0KuvWbf
         PGVqqUkw4BzysrNSAT7L1pIuFr9d72qQzzmaWVHQG1676kauvk8cgXaNiLDrqVtgWUJq
         ioSneYmwSNJaL6pHNzag8/soUebIg6pC5xvzzO2aaBmQlvUz5koCf4D8rGoXTYleTmb7
         IcOkNQJX2I63v+LhoYltts/oHS3/U4yVRvhj6HOMaPNwjYZpkKXEI4FI1ITj5QRHBpa9
         tkoQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531Rmy/i9Hlh+VeslpPH+LC9pOaAzKdM6rDYLnT8HAqLdr1NfDuB
	j4m70HmlvP5p0PIJXGsw8Mw=
X-Google-Smtp-Source: ABdhPJy0Q3JVqRYE51+t7UKAyHYWI2Lt8/RWZFcbYGVVD/M2Wa3f3aZ6ffVs84IQWohCKJ9lArhpAg==
X-Received: by 2002:adf:dfd1:: with SMTP id q17mr8030634wrn.347.1601538899047;
        Thu, 01 Oct 2020 00:54:59 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:428e:: with SMTP id k14ls3391136wrq.0.gmail; Thu, 01 Oct
 2020 00:54:58 -0700 (PDT)
X-Received: by 2002:a5d:4a49:: with SMTP id v9mr7949411wrs.153.1601538898224;
        Thu, 01 Oct 2020 00:54:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601538898; cv=none;
        d=google.com; s=arc-20160816;
        b=a3FyoG7xAkZx6PDN+SzQaAtc9k3vFyM9cOxaG/xT/ENhCB+6qDcXIH1P/ztOrntWSf
         gCmMrL2taiU3tLdzapac41A3Fkpu2wQNLIrQCVoJe6ZsVbYSk4iDvWOWfJWjHSppPH+v
         jmOzLwPJvA2wy7ThiMFRvT/zagZn/hOACP2iMTdarbx6CYLbOYtxolVl0rwAcue7J7G7
         hHMbgHVELOnOr9Lf1KgFCQOIRGb6f60hjG6atZz7Z7bMR3JHxinFXURZlWRX4Rfc3khd
         qOLvZnoHyNwNbaxQrZupPG4iaic53lS1aYU/tEFA5dL0zsRby+VSXLPY/eJ52QJiyX4a
         vbOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=QFmotsCR5+/z8Ca0u8OffmpdOvDM+GimNzKjjFhI9J8=;
        b=iXI2R3Ccw6Gd15ZnpSqacRczT9SNZqpDtRtL6pqh/7CMvZ9ie8Pa6XO8/pXLvIbPRi
         FXjWoy6yts1T8dsCI8OEwFpJTN9WORsVN8H4RWM79ezrUmt8nF8oDn33ImC8dor/G1cX
         d8CLu9QhqnNlnh0D5nAiFbvrGXJA5iFuw/gJK4O43gb7I+vdv3nUSLQxvgyEuZN7UnFt
         jj4iKoWHXH/3cpM61mZjpHIrhQe32mKZnNMSrQJLpU0iplooOAQCxW1/sop8xim/kMcl
         QeaJ/GoTQCnX+yVFVBho6AUZ75aovyuGByAOJmz4O5cP1mN9kl/+ouuZJvPphr0e00X9
         zOiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id z62si107852wmb.0.2020.10.01.00.54.58
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2020 00:54:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id E039DAC97;
	Thu,  1 Oct 2020 07:54:57 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Coly Li <colyli@suse.de>,
	Eric Dumazet <eric.dumazet@gmail.com>,
	Vasily Averin <vvs@virtuozzo.com>,
	"David S . Miller" <davem@davemloft.net>,
	stable@vger.kernel.org
Subject: [PATCH v9 4/7] tcp: use sendpage_ok() to detect misused .sendpage
Date: Thu,  1 Oct 2020 15:54:05 +0800
Message-Id: <20201001075408.25508-5-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201001075408.25508-1-colyli@suse.de>
References: <20201001075408.25508-1-colyli@suse.de>
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

commit a10674bf2406 ("tcp: detecting the misuse of .sendpage for Slab
objects") adds the checks for Slab pages, but the pages don't have
page_count are still missing from the check.

Network layer's sendpage method is not designed to send page_count 0
pages neither, therefore both PageSlab() and page_count() should be
both checked for the sending page. This is exactly what sendpage_ok()
does.

This patch uses sendpage_ok() in do_tcp_sendpages() to detect misused
.sendpage, to make the code more robust.

Fixes: a10674bf2406 ("tcp: detecting the misuse of .sendpage for Slab objects")
Suggested-by: Eric Dumazet <eric.dumazet@gmail.com>
Signed-off-by: Coly Li <colyli@suse.de>
Cc: Vasily Averin <vvs@virtuozzo.com>
Cc: David S. Miller <davem@davemloft.net>
Cc: stable@vger.kernel.org
---
 net/ipv4/tcp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/ipv4/tcp.c b/net/ipv4/tcp.c
index 31f3b858db81..2135ee7c806d 100644
--- a/net/ipv4/tcp.c
+++ b/net/ipv4/tcp.c
@@ -970,7 +970,8 @@ ssize_t do_tcp_sendpages(struct sock *sk, struct page *page, int offset,
 	long timeo = sock_sndtimeo(sk, flags & MSG_DONTWAIT);
 
 	if (IS_ENABLED(CONFIG_DEBUG_VM) &&
-	    WARN_ONCE(PageSlab(page), "page must not be a Slab one"))
+	    WARN_ONCE(!sendpage_ok(page),
+		      "page must not be a Slab one and have page_count > 0"))
 		return -EINVAL;
 
 	/* Wait for a connection to finish. One exception is TCP Fast Open
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201001075408.25508-5-colyli%40suse.de.
