Return-Path: <open-iscsi+bncBDLPRE656MLBBOOJ3P5QKGQET2OLRHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CEF280EE1
	for <lists+open-iscsi@lfdr.de>; Fri,  2 Oct 2020 10:28:41 +0200 (CEST)
Received: by mail-ej1-x63b.google.com with SMTP id m24sf399289ejr.9
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Oct 2020 01:28:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601627321; cv=pass;
        d=google.com; s=arc-20160816;
        b=uhPa7aU9psRoet5IRXeABxOXQmfG71D4wgrUiD8pNC6d+fjTiPoAqcc61JyA+vZiwa
         0xxWfz1rI8/MfDxUlhwXZR/I9q5a6cWddRehXmyRlAGqjTSBHnG6X9a6zIxnaTH9YwzC
         0Y0LmmBYLOOKkKOgLZt22DGZ4T97Eqac8a9KQWSSDScpYqD+FQujeK71hXdDp+MWO1n8
         nDt1LFHwRJCwjeqy1EAMB1kvKEVhoHVLDFRuHJQchFccl0LtNrBk1i5ys2fVyUNqdEOW
         kXZPzG6UHztbSy8rgyojyFjldQkO8CuFerA/Hvw5od1h4ZVHER119t9Cc5+bC0buQkpG
         ZRsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=1lHoVCRd6SkBdQ7ZFgrF1Jm4p2BEXIyRArUyIMVuiSI=;
        b=xJC7oYPpOYYlM7riGUv60QxZkP5oyfGZ36cZQ0bhbv5SUGrLeVGrnCJzZsd8Qp6YAB
         FnuODlsnRZ2OhykEfrZkKXRNmaPz7hdwoF+0e/1B3o7kkE4GBUqz6lFEo8gpPfSquDXo
         HZQxATgFk1Y5NJHZTwSrj8m09I4cIvBWhQp8V6ueX4FE/gbuLDiYR9vAAJGnzZfX+UMj
         vGCgHKrxxnuZ1x6xWRXw8gnzgKtiJHRc3x4lo9LFdRY11E69Lwtvs6b7CsC+ap1Ig0o+
         5kgjH008Z1xVU6SN3TGL6RWph6ad9TKRXEYKOujPYPqRgzMK7ITSxI/uGtqhjET7D9bv
         VMgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1lHoVCRd6SkBdQ7ZFgrF1Jm4p2BEXIyRArUyIMVuiSI=;
        b=ejH6OOqN6ZNjUfvi17yF+x2TiHdkXWSwhxMHaR7I1R3nTP+BdYlAW7X4Y/VzSXt3a3
         LeQKgaSv9epWs3xT7roqSYUhwAGjlTnxOON4WpJnUEZUxISmN79951oKtZOAWzNdEhTQ
         GBloRBOM3mSF2sCQG41bQQCP4JYkW5MDX9b7I7aAQFiSvKnJOoR1LQI0mN85e75t99ey
         MgMH/zxMRrQtNpXKmNJRRMUbrijaNOcCt/mY0hWkIkZpv3gt4wEJzWLWXZ0n+zsxJqLA
         XlYkyeflBBZ2YW7AO8q5SP4A5wC6ZFnP2JKwMHfT3iS1TKzkzteCHpV9qlBC5bTwIkJA
         9cLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1lHoVCRd6SkBdQ7ZFgrF1Jm4p2BEXIyRArUyIMVuiSI=;
        b=tCzfpwRvvcp5sBZuZCGNPixjFFI2+SZIVPEoa7LA0cOcHXALnoYD+i3rylSjHiVi/Y
         vXfe9q+nABGM+mcY4hG55mAC2F4L1EdLLiu1BbrplCI98+v1xBgHWFKAf/6BhXfhc8pc
         ZU6LTrWm2mUDGbAXRk/VF/RGgSTsy7aBsOBcbdvOKHcqSPD+lNM86PB1JA0uSpGVFSmu
         z5Y7wS9kYxj/34W6gU2+qMEjCUn0K2wSwU/rKxY5dtrSwOufys0yMy16s9PllVkBVBdr
         +XAF5AKIWqSkDtaCT+uCbKq7O/thHSMx1+kVPBWxt7lwp7e97YKbzLhL3yMIPLi6/eHn
         UKoQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530a5iGlnNuZmKG/k3WV7uPdK+6krpbZhG+ZdR5AoeMEvm7y9yHO
	KKnoooqB0/RnMOb6Hz8aO3M=
X-Google-Smtp-Source: ABdhPJxEKjqQifWF0+Qr0PdWlxw0yBMkeasYibhTXlgarjU76qoFz+kB+bxWaj4rhVTQhI8EVvtt6Q==
X-Received: by 2002:a05:6402:1fb:: with SMTP id i27mr1165296edy.379.1601627321370;
        Fri, 02 Oct 2020 01:28:41 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aa7:c545:: with SMTP id s5ls1008088edr.3.gmail; Fri, 02 Oct
 2020 01:28:40 -0700 (PDT)
X-Received: by 2002:a05:6402:1fb:: with SMTP id i27mr1165250edy.379.1601627320441;
        Fri, 02 Oct 2020 01:28:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601627320; cv=none;
        d=google.com; s=arc-20160816;
        b=MzFt2NMR0FQBv5Dm3x2Et/mPz/rnDq1Q7knpR7nKTI2GL2RvMCy30js1HSgUBUOPsm
         rsIkkUeKn+zb2tvLkzgujQAUXXUf296tZnLTVQqUGGPbikZZbjS4AzMJG4iOB1mc4xZx
         qFsA5fsxSei+bqB58MY7TE+HmdZtZyWD6yRmkH2k+FTPI7mFPyy5R1uoi+W0o9ONKkcy
         MehGlYDN+VZqTMjfZWBJvZ7Rc8zuVnhNompM2goV/4UO9gcZSbCZrig2Nz0BMVlD1z42
         rWF5IIXVTxfYQgSTTOMbAnhZfKTqMi3sKBikGgkn0DFTmHbJViO0vfnvwA6RAK2taI5N
         BQhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=wdxccPJYBdmTzMEd5xc2H4jr+0bv352WMLEJoTJja40=;
        b=ZpRdnJazUMAFhv+bKwWc4pPhsW65irHQ70EuuqIpFTCthHxNjBNDOCNekIRL4tlf6u
         jS89iHvqqjSWGCn1BPyOy4hpifMoM2RML7kpnJGMY8olNc3Kmhc/qO3OoIZLZG93b/Pb
         RikffliFbapY811bktDQS80mSfFdXoXViiIXwL17034dgCQBz3UMYHWd8xDs+CzIozcu
         tSUALe7DJsXlCkt1scYCYG+jjPXv1jZ1DCbWtUCE8f7wcnJVi/TjnAK1NlkNh9NE+lPe
         abuYes7/QrQ9NjBnFy7qbGAMHdVhBzI2dSBqNJxyYfysYhc3IaXs1zXzpfi7MhksF4BM
         kzyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id k6si24606eds.3.2020.10.02.01.28.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 01:28:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 14465B1D2;
	Fri,  2 Oct 2020 08:28:40 +0000 (UTC)
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
	Jeff Layton <jlayton@kernel.org>,
	Ilya Dryomov <idryomov@gmail.com>
Subject: [PATCH v10 7/7] libceph: use sendpage_ok() in ceph_tcp_sendpage()
Date: Fri,  2 Oct 2020 16:27:34 +0800
Message-Id: <20201002082734.13925-8-colyli@suse.de>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201002082734.13925-8-colyli%40suse.de.
