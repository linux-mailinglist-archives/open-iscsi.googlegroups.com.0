Return-Path: <open-iscsi+bncBAABBXFO6H4QKGQEC3WEGIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9B32490E2
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 00:34:05 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id d6sf14134050qkg.6
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597790045; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cq2pYzGBGsg5T4jR3Fv3mnl80vucoDbtLEg2CbB5jC9R7mUUMPZ8J8vMkfeyexdqz0
         nKyLTffNT4B0bJJ8J3M/yajI4mFH/QzzSljJkG0ZYA/drFAmfjMUVLb4Em1xuqwQ1lnC
         Vsq8/DUys4vuq+ocAanp3NqJlwcaS6p4OUNkNixBCfri7yAUnfc/g89+hXZ0G6RKD98b
         62hnspozO19UpxLbFd7z+Be2dg0DYbWx5fl6bHJqs91Dv2NZ2P+l2nrIRRoBQ5p25PQr
         HVCfgSvC5VpIhUp6sSbwmQ7XHMaEJ7cFfYMFrfTVkdYagGh3iNRAtM662FgxchdwhPrD
         W8YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=m79FYKfXwbcNIi9oJm2DSSrsitdL2PxRmk0X3gd5BUM=;
        b=uphnt4iaPqyYtDAQNi1am4n6JPXFgy/LT+IFt6YVOhE1z46PJWZxa7IJE89JDeMvXc
         7W5ELeJxCct4iNjeguCSMyXbE22NAXpNVFl3mDJXKUYPpR3LvCtUtPrPizevmjzziSt+
         H0QSM5z8K7QriU6NC1PMRYDs43g9ssPkZDM/lYo8BVSJv1xcKSzmylSWNSUfQpzlUojO
         4m/XuhuyJAKBxfEQeIV4VXkMcg06sLfVDkhPNWOQqdm//iWcR46r1opdbgSjUSoh0Cl0
         /Q0O+kcotB4NqVx0m1ppCXp5ibROlI/pRK8v9Np3KJi3DU/feHBXUSFQPssXoxF/SyPb
         IBbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m79FYKfXwbcNIi9oJm2DSSrsitdL2PxRmk0X3gd5BUM=;
        b=k3+V5wLgf4XBZs1M8Y3I26sLyrYEWEL4N0LsyqBVV09E25wU8qa1rA1h/yDdJjuEDI
         GrvbPHKwHWQJo9fd9iTkayS8kWQoFLkk2xqmBH7i5CrjPhOnv5lutH6Gd27dwRaivipn
         AGP3CijxlvJWN/W9ejMArBCi+Ux7/0KHFUKAh7ii7GNGfdUjcvS/bodHsEwAfogJwkLl
         ipU1akAWEcgmkRkLN1M2CkAa83XAkSTc4hgTzF57GvfOY6yLtzBaLso39H80rcQPS19h
         iZVPXW6qlFtvQsXRJ6G2q+yAwHOQyaovfBYln4Yzefq/WmW9E1E69MELkIKV2aMfvpE6
         KUhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=m79FYKfXwbcNIi9oJm2DSSrsitdL2PxRmk0X3gd5BUM=;
        b=VIq4ZQ1shjSX5vnEVEHrxoN76l4DnbQeH0h9nKyTPiF4MfuMsnZ1Ao6Y/A9iJENydz
         8WoGDQUWgRNp2q3/4RaHYvWtJsO/2O/TB/qvIc4is8Bmx7w/g8zMg/Agks/TNnASd+C2
         swOynaJ+e7xq5BpZRugJ1oIu6LEcC0BJVoChO6fTI17oS8Rld49LkqJWvLKbm0FgV+Y5
         1a7VY9kNy28bcJnOcfIr40BQthSDceLsyMpI8D6XF8WzZ9hYeK56T58ebm7QMDdiSlPO
         9IdufTYipVsD7b3/3kwcnvmNZ20u3cLC4m2e+H3XCtWkDuEljfCj+6ZuC3z2fHADVlLR
         BVkg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532P6CS6jrCNUYsHSK7NVgNfrUPgg9sSxVpUaoi9LKlad2peLF5W
	srJZXtLkChH7VBldsh1rPJY=
X-Google-Smtp-Source: ABdhPJyHZxDnm+dKzDAtJjy05nZFBM5X0MsLW9RrrnbhXEfWoiuB8vcArBI4t/Jy6ZmdzamW0fON0Q==
X-Received: by 2002:a0c:fc07:: with SMTP id z7mr21764570qvo.65.1597790044858;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:5482:: with SMTP id q2ls5451939qvy.8.gmail; Tue, 18 Aug
 2020 15:34:04 -0700 (PDT)
X-Received: by 2002:a0c:ca8f:: with SMTP id a15mr21332529qvk.46.1597790044684;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
Received: by 2002:a05:620a:200b:b029:e6:9584:d5fd with SMTP id c11-20020a05620a200bb02900e69584d5fdmsqka;
        Tue, 18 Aug 2020 05:48:33 -0700 (PDT)
X-Received: by 2002:a17:906:7104:: with SMTP id x4mr20903328ejj.417.1597754913026;
        Tue, 18 Aug 2020 05:48:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597754913; cv=none;
        d=google.com; s=arc-20160816;
        b=RioMZq3TMVoVaf7EW4MQq7tP+QS36Zjy9EVFTuMqnJayoGQbHNR8LbRGZXyVk92GO3
         F5BNzl5GpA1vyoRwa58sqfLpOROw14vr1tcPySykoza8PAzV08TDI4MQyMJdqABbvtJC
         mFqcM/bUxdL0bw5ObLzjiUge6D5xQt0J6IStM3GA4thhpbxb/V1P+e7o5rrThaB1+WJs
         Gqm3avFWTJM20DgwEkA4fkOtGFL0d74UJ8xVtkAFK54/adbMSC2FlWl9Ft1sBcS7rmkk
         KL69kMexVG+MCn45KGJEplD99WTZkmm/nX0dmE81H4KF05VcPJnLXdEuukN9o75VB7u/
         Twxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=NOH279WB+19Agj+W01eW07fPoPPxrNMeXtHnKKfXMqs=;
        b=UIBjiKxCKZ39HhbffDjOTd+u5v02AsmM1yzCE0E1T+lf7LnjwfPTlWb25+/UeCs3Pw
         E8NvYqtiu5nUn/v7/9Gyzu5jI+kJnNoQMqqmGraNnQFAxh8iKqXj1OG9+hHUQSFDKMfP
         NL2uDgG95ragLbdO+D0NQ9wcdOvwGhiNKDVaUlDBIrSagGP1do0ic581hlf1OhrI8zGK
         DDfDeG2Z194fnyB8mWM99lt5TlFZTUSiOzY4Oz6gBMwp99YMkAoBJXPzigbhqF376+L+
         50QmhwgmtX/10r+qfX506v4iW7/Hc8+T532sdNCmEmHyIvXgkn8T+IcnccvuEAxIb9bI
         +Xgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id x17si596898edr.0.2020.08.18.05.48.32
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 05:48:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 62052AF13;
	Tue, 18 Aug 2020 12:48:58 +0000 (UTC)
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
Subject: [PATCH v6 6/6] libceph: use sendpage_ok() in ceph_tcp_sendpage()
Date: Tue, 18 Aug 2020 20:47:36 +0800
Message-Id: <20200818124736.5790-7-colyli@suse.de>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818124736.5790-7-colyli%40suse.de.
