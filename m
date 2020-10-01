Return-Path: <open-iscsi+bncBDLPRE656MLBBYMW235QKGQETI35DJI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 5240527FAC6
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Oct 2020 09:55:14 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id 140sf1535564lfk.16
        for <lists+open-iscsi@lfdr.de>; Thu, 01 Oct 2020 00:55:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601538914; cv=pass;
        d=google.com; s=arc-20160816;
        b=vTZdoKABr2o1Kelh/qP3AsEPOflhpj6rEECiozNpJnkHbLsRnryiluokocQmQmfN8T
         GTr3w31QXAIUeThyX1vgJavX4Dlo5Ldwe+Iv7wTYn6X1COe+Y8vuXNT/XHbeGEu3Ow7z
         U0AhjDuceZDqhOfGF8MjInNlMCXv7wdLfBRxNzLlPiASM1kv/ckuJZa3zS8PATy8jA9g
         UoBs6jVb3semaN7NjzkEVqEZX+b4qnwgCnn31zNj3guYKZXnSi0ZIFOPsSoXn4B4/IKS
         /kUAdssySy9Q9u8hfccj9KgRt+fMbDBbcVSNlfclJELR9nQcuLRPT7kKk5wONgcVbMAO
         3f1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=HyiyeJWeRjR+FByPmWGIzjME9jU66NwTrp4PZ9Wh63U=;
        b=stFYRT4+vuX5giFSWljUTKr8Woc0tr02UR2ZwnloHkijdU0hGcnV9ZLe6TGfGGIgHH
         vCO6PUbhRpC+hjRFVylthespBcJDeAI5nHaKHHdQiG/1XEN8+pi7U6n5cyYbPF9vsVJo
         PQ72kw80DBs7CaV/mXXzyq7RSKuzkPZSTUAXwjkPmvItApzmFjSWW8XqXxNXSn3VRul9
         Hl3SK0J58AP16+QX2KvrKPgmK3Mm0q/Blribbe25h5VXZOBHXPu87D+E4TdQeM6SfEdw
         jd9T5z94MHyxbWvqo8I7S0sQ2oq0iSJrzap6BKpz8vhMop5QLq5GoFiV0Qo4nea6ycKh
         Vyyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HyiyeJWeRjR+FByPmWGIzjME9jU66NwTrp4PZ9Wh63U=;
        b=KmfkWtOrLjc2yVmuQuFqw5Blt1DCjEIS+yTSMpWhl6GiNhHZ3XTHEJHksAFWQJEvN2
         J93QRTilEnTUHIk9JW2ysI5f3H2EQEvp53BxIwX5gzSut4MD/Ox+DiXk9P2xrSD2vgKN
         UCwDj1sXhgE6tQ+qZ56QtcRn0ljUoZcKzbKjdinIsXbcpjK0BSt937leLb+QO2DWRcjU
         sPMPojPN2auEQLoHbA3EN4Vs0hN6KZttUjPRlMBZYc1dcHIFRDiP092w5Iv+OjL8+Mgm
         QP8gIL7Xdy7GSqG0lNkcKZDxl9UYNMY6SCduLTONlTNP7A6cAvx11WDtKzYNktly78Cp
         kkLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HyiyeJWeRjR+FByPmWGIzjME9jU66NwTrp4PZ9Wh63U=;
        b=o/lxA39AwPAzmjbXVOT4MPIgtINKcUz+x6HVAL25NkukXlXP6mBkvkSUks3JGn99h7
         FTNd4r02n5sIPpfJevbx4/xG05u08LH24b8UQZ6lfKL45xhO4xweuwDd5HqAyD6uIv5d
         3g2ncG/y3ZDvIqyo0PB0trIcRni3oHYIoBQ09mfLzubefEAE5kkRND2H01kvDHTSEI34
         EPwJ3OoabCcpinHvF37yxiDdLTc0A/bM8Y+Xp/MQEXlJTF8/siYSzNBrjRNn+XVDTFni
         DXuHK+zXIdbb8Ufr/+T2FQSTaXHG1TjmwwInirgQN3EzB/JO3DF8ItZqjjpbzKLo1OO9
         yftg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530Y7CCt7/AMYCUrneMDVynakIVb2u3yQ3B0DDrjFCE7lURrfT60
	R0u0p5d1iw7wk8QS9/Nt1aM=
X-Google-Smtp-Source: ABdhPJwWh4Gwgd10tIq6Mmy0UptOAnWTyEPj4KJmHGlbZxfYIIgbKrOrBrU8mmr4DV2e5N5b7oq6bQ==
X-Received: by 2002:a05:651c:484:: with SMTP id s4mr2056779ljc.391.1601538913783;
        Thu, 01 Oct 2020 00:55:13 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls439625lff.0.gmail; Thu, 01 Oct
 2020 00:55:12 -0700 (PDT)
X-Received: by 2002:a19:189:: with SMTP id 131mr1993810lfb.331.1601538912759;
        Thu, 01 Oct 2020 00:55:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601538912; cv=none;
        d=google.com; s=arc-20160816;
        b=Ae5NstpKezg89aObkVEPlwtbUW/mvAsFEgNLmuFAhJX3Jqu3iHdzXE1zD9++YMSFB/
         VXO/NgZR31MdmcnxdDQKtSmHPRV2jbrfse+8YNKERtUydsci9f7dYFF9BvfUZQffkZHg
         ULVqEDxYD/c1qEc7zFVlzYBtUAM2cNAw1DzKg8mEJEwBbBMg12Yih2mnVhNbhvjh3obw
         q0dB+n3hE5eA6DcPU8dW0KBmknHucUUdqTqt0dje4OCrQyWNCUFL0Cp/JafPQAWJY7RR
         872TkfrbhhWG3yZ+J7lyD40d5SU7OAavQBSp1IJPIPpIyX5+1cZ7E66fqJnNS8nGtOwy
         D+uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=wdxccPJYBdmTzMEd5xc2H4jr+0bv352WMLEJoTJja40=;
        b=pP9ui/8YcP+jsiJnAusmg9zkWyHoLO21iB5AnC6sVtbKq5wCPfidy999xIPeankZw/
         jPwVm0Qyyn2+qgsnhv9tXazInczXlB7ZcV5tcLbC+iooWbqXjaHD3PAEewxWGCZPV+H1
         0wldBAKQtVbGdcUNLkTt5NOItgx1SMv/lst46zPeZuxCP1dQM1ZxxQ2rZnHUe6WN4eRj
         jWFN44G5tt2yOTIqFXmrv36mwV+s4n/UErePiGXGVWCyeNULsPqzTkVbPUA/8O42hqmi
         HUWbTJzXnvUTlvlM5lkmLA3aQNfhbMYGDK01jy2JcEGkV6IS0XpxXS4c4IBqYC+E60no
         xkuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id l82si79676lfd.13.2020.10.01.00.55.12
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2020 00:55:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 2664FAD64;
	Thu,  1 Oct 2020 07:55:12 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Coly Li <colyli@suse.de>,
	Jeff Layton <jlayton@kernel.org>,
	Ilya Dryomov <idryomov@gmail.com>
Subject: [PATCH v9 7/7] libceph: use sendpage_ok() in ceph_tcp_sendpage()
Date: Thu,  1 Oct 2020 15:54:08 +0800
Message-Id: <20201001075408.25508-8-colyli@suse.de>
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

In libceph, ceph_tcp_sendpage() does the following checks before handle
the page by network layer's zero copy sendpage method,
	if (page_count(page) >= 1 && !PageSlab(page))

This check is exactly what sendpage_ok() does. This patch replace the
open coded checks by sendpage_ok() as a code cleanup.

Signed-off-by: Coly Li <colyli@suse.de>
Acked-by: Jeff Layton <jlayton@kernel.org>
Cc: Ilya Dryomov <idryomov@gmail.com>
---
 net/ceph/messenger.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/ceph/messenger.c b/net/ceph/messenger.c
index bdfd66ba3843..d4d7a0e52491 100644
--- a/net/ceph/messenger.c
+++ b/net/ceph/messenger.c
@@ -575,7 +575,7 @@ static int ceph_tcp_sendpage(struct socket *sock, struct page *page,
 	 * coalescing neighboring slab objects into a single frag which
 	 * triggers one of hardened usercopy checks.
 	 */
-	if (page_count(page) >= 1 && !PageSlab(page))
+	if (sendpage_ok(page))
 		sendpage = sock->ops->sendpage;
 	else
 		sendpage = sock_no_sendpage;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201001075408.25508-8-colyli%40suse.de.
