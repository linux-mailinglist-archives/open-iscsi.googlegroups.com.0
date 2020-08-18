Return-Path: <open-iscsi+bncBAABBXFO6H4QKGQEC3WEGIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id C48E22490E4
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 00:34:05 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id c202sf14130689qkg.12
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597790045; cv=pass;
        d=google.com; s=arc-20160816;
        b=g20Y0mCkdhCzZ38yr0xTRaIHxIVEpg/jJh+s1fohN3ZrBrzkv557jZ0t3rgrx9qCWe
         It6xJ13K4wS/RJDzz75H+iJYbFwOtjhlN4MK+azYvaoNRvCJxI5oWt1aN7/PQ7PVer0E
         8DY3r2gT7OERYvy61SrhK6ll9RTGWqoFKz52mfVL4wY6IMkMRXewgBmNjtPUqOfM2WPq
         /gatAmHyTXrXGW/4Pbo6q8j6IKLKvOqFltUBMIOBcqTxkTpSFTUJqzJ9D7s36Qv2wHGp
         HUZYlkXgT2M67gSW+Et2eyOJAknMBUDsGVHnr33gnzj1NN6uSqIodxCbbbQHzWCxp2w3
         EdhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=bDu2BiCh+Atk/7s9yyteowhmDre7RSYFvcFHfCEz18M=;
        b=nhM7+WkGKjzK01gfjO/H/W8JU2FYpgUkcs6eds+kdtUdQkkO8JwGT5/KWkoQELIeSD
         7nu45YNAS53qvbFaIFOrbhbq+fGJW1fRk3rIABMIVMQp8u2n0JoqtiSwDvZ5nFLHmyU9
         +tPnkKYSMexLVdBaSBTg9mWgR7mqktAbPovZMJGknQrXMT5W+/p01zl30Frld7J7KOz9
         AYcCfRVXIZnUI65KuBh90qRLBn6vSjn6IW6pH1F9VEVs2LrUKU+s76vAlMx5+d/H2pjo
         g8wu6xMIjZvNvi4UhRZ+tRix62B28eT8TloYke8VVoL5gHbCaEt9nAawlB7udxpSnzp1
         jX+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bDu2BiCh+Atk/7s9yyteowhmDre7RSYFvcFHfCEz18M=;
        b=CYjNqgGb33N5Uv4dbNTCZC2Q9H82rO6EafDGCDKm8yN/1JLc8fVIk18ifRfNbbZu1t
         vXKtTWlOjDyfRHwasv1b466sxAFU6GAxMfujtYtIVjPYwWn5b21t+7LSnVCtZk3axdWh
         ulW3ZonBal9YWU5Qnla4nDs/FXCzk0tuj/Mx7ZQGL9sApHpUJ53zHXLI2g+hsl6IiPgJ
         H+CyW6cRg6HpAWjnvC/DOZ1g+B33PMF+I+4Rh+NouDKJ0oNxnMydFFL7MFH14dU9rKHo
         E9+vd9I7sS9RJ6g8svR4n5hwNFC/jyD6egP7lROlRo4BSp1ulw+m2EXqb2y7ShUOeABl
         TBgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=bDu2BiCh+Atk/7s9yyteowhmDre7RSYFvcFHfCEz18M=;
        b=W2Dw3aE8zMFr2Q2DJtMqAEuyA4FR7swTh1AEcu1izpDdijMBlOAtHmlja49sr9af1I
         BrNvtrwOKnTi0xwDbl6ZVh27TZKXYelHWmiocwTT1t53sXgGn6A6aFfdWWL2ya0f/84S
         g8PiGzSxY3SB5vvg36Io+LK3tFnaV4jjyGz+y/fnDWoVviHPOEBjDx07hLFeikO/KmvU
         s8XTxKUij3NA3gnE/qsb0S8boptyey1N+HKq2xhsgnM5o0cqC5pBhMseLHuGMVlxFgN+
         NdH1hQmMxae/cOFp4P9BpYqMZQ+77+5p5mHvRuY+EL0NWyy8GD3MWkLxldq2fMoV52/S
         v9Lg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531Mg88HG9x1yIHUpzYocz4W4ddHaW8OgUR3Ix8pwd3/+WlnauTJ
	S8pJ0gHIAksZpb3w0orxATc=
X-Google-Smtp-Source: ABdhPJxsiuz3UEIE1K0n+WtGYDOgbKPP69xMQH3+VnPZte2yJ+kbTkyWD0o8Nnoq8bxZDx0DIfLKtw==
X-Received: by 2002:a0c:d98d:: with SMTP id y13mr21556339qvj.203.1597790044881;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aed:2701:: with SMTP id n1ls8569506qtd.2.gmail; Tue, 18 Aug
 2020 15:34:04 -0700 (PDT)
X-Received: by 2002:ac8:7606:: with SMTP id t6mr20425242qtq.348.1597790044684;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
Received: by 2002:a05:620a:95e:b029:105:636a:708b with SMTP id w30-20020a05620a095eb0290105636a708bmsqkw;
        Tue, 18 Aug 2020 06:13:39 -0700 (PDT)
X-Received: by 2002:adf:fe50:: with SMTP id m16mr21001860wrs.27.1597756419070;
        Tue, 18 Aug 2020 06:13:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597756419; cv=none;
        d=google.com; s=arc-20160816;
        b=GSXuTQ3sQDTV04UZhoGSe6w4UKfwMn4FgNV9DaeFNtrqpR/MECI1l/FuGYsHcHUAov
         tICWbApy5SHhscqiAVyDbJKlKCwx+vzi6USzfGzgFCJztILqWemH77zxpGp0J5L8YXzM
         EQH7WSQQZLdBd6n5dgwCRWrIYWC3rr3qxZRHaZC/wPoWypq+GmpGaMdzgqO79DXzDm0k
         tElEmsqR36zvKW3s7iHu9KCf0lpNVeSJ5VtMte5VqUtN2vBs2tOdObwEeXW1yrpOi9jW
         vgKYbQhuSzh+/Te09LLVViJ5FWUHbelYrS891e6Ll1EfpgacBKhnm9n96ZiM7WCt2+6+
         ziow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=NOH279WB+19Agj+W01eW07fPoPPxrNMeXtHnKKfXMqs=;
        b=o2Wzyen0NiO6t5Zv0uSGY92iPxqDQDbukDKbzYWYzScIaAsRIiBACTrP4l9lNiJEUb
         QI9Em/GMgU4N7sYUbMYndWlKO/JC4L6ehw7KZmYdziHSWUtsV43v6AMpHq+uzddld80D
         Y3L4y71gaZTnweeRV0BHBXW6cUovx/2gqAQcDrgE6+hpQjfOALHwSpuE1uPY2MRtPMda
         8EZUdVYWfYpjG+d9LfAO9vFsrcMYrhOw3TohsaVxbOm9Qp09pszSn0e2tc+PCqJHoiXD
         Nb/l9cs3BOhQd1kb1RbAa3S8d8pXA8Lg7Wc+D+0Siq+HAQkmqTyXX+79UZfavw5JpcZR
         aOgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id f23si60167wml.3.2020.08.18.06.13.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 06:13:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 811D9B178;
	Tue, 18 Aug 2020 13:14:04 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Coly Li <colyli@suse.de>,
	Ilya Dryomov <idryomov@gmail.com>,
	Jeff Layton <jlayton@kernel.org>
Subject: [PATCH v7 6/6] libceph: use sendpage_ok() in ceph_tcp_sendpage()
Date: Tue, 18 Aug 2020 21:12:27 +0800
Message-Id: <20200818131227.37020-7-colyli@suse.de>
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

In libceph, ceph_tcp_sendpage() does the following checks before handle
the page by network layer's zero copy sendpage method,
	if (page_count(page) >= 1 && !PageSlab(page))

This check is exactly what sendpage_ok() does. This patch replace the
open coded checks by sendpage_ok() as a code cleanup.

Signed-off-by: Coly Li <colyli@suse.de>
Cc: Ilya Dryomov <idryomov@gmail.com>
Cc: Jeff Layton <jlayton@kernel.org>
---
 net/ceph/messenger.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/ceph/messenger.c b/net/ceph/messenger.c
index 27d6ab11f9ee..6a349da7f013 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818131227.37020-7-colyli%40suse.de.
