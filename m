Return-Path: <open-iscsi+bncBDLPRE656MLBB4EMXD5QKGQETFX4HHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8CB278BB7
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 17:02:09 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id v5sf1161463wrs.17
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 08:02:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601046129; cv=pass;
        d=google.com; s=arc-20160816;
        b=0nhHNhKSbLE1x22K5BY7bqTMfBHTdW0EA+eCT7gp2/mdCK7xanmzA0XqQjCk5jvy/4
         ie0uRym9jc/o3BvaPunCptxdH7jUGZFsEgOJp0BmtBGdGLTuist9ay7Ialt5C80rONa2
         TJBVkaCUfV5AGj5f99wj9buSOg5kZkA/mXeV0e3KU1sI0W0ytNds89uAEs/qJM+BnjHK
         rWez2hqWRzvrHEZQAHa0zkdO0ReIjlUdV2gFtHeZNiDtKr3nAJWdrMfsihYvGXpA8piE
         xHslpItjE18X7HqlmYClU+FYdUyYuVZTihb5nb9wK38Ab5ajwXwpokoxSp352qALSf6C
         M04w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=UfGi3H13dO62VeH3pXqheUWTuY4BEopyvwyaVVzpLUM=;
        b=wd6VtwzF51stFIeiUYa9d2QkY3dxRqP/L8j7YigBPwNC/nr3Q+CWQwLzj+ikdVozbi
         TkP+r9HXAZdR8VeEf/6h2ZclNJenxrnN0vIe+dldhyLKecV/iWysVfWpqrHaWipgcyEO
         boi1V4g6evc4V57MDOqSdI4TPRjkrY/X47mcPVTCi3h0Rpn6PklbFWzMQqszVRviCXLT
         UwJJ7HzdI8mvm3baJM2E9PYju5CDcLQ5GpDPSFA121fGEUrqHhj86tAvMh0rhwKwWzHC
         Aru8U3nq+/BUQM8OGwKT3EnUR8PGOrZt9NQQWkHd4GCRf1uIXco+tRuCDDoyjSWYYbNY
         XdBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UfGi3H13dO62VeH3pXqheUWTuY4BEopyvwyaVVzpLUM=;
        b=fodZzTncbjCAgiy/NB2u/UYF6BbMHQFS3oCT8xxRA3rVLT6zUpKnMen2IlcF+5lFz8
         H1AHvVfWzd2JO3PNnxsS8xLokaneW99SW0EOuSREwKKsVihUYS9fwnCyEnDgXeC492Wb
         hA4ctFwUmm+5Fbg4ecSfGsUxm8uczV5uKJwHOGKSj0fKVh28PSAzHFyylv+BKybwcV4y
         ka47gL0d8zQhUijiB27QYlk8U0LYK5XdiCR2LM/Uy+gD1KgoBEPSJfqZFdM+TUzITxrx
         eSBxbQWrh3ReEChHJX9Vg1/XNyhcGKaS5OMe6ZkY8h08zd9+xtzq+hKYVE2HzM9CaK5Y
         3kzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UfGi3H13dO62VeH3pXqheUWTuY4BEopyvwyaVVzpLUM=;
        b=JAOrBw4Ap9dYOTcmPmjXp1o/k++ZUBbZ2+PVZOWp1cubCqcO78o2Du505u3xcA4BsX
         rzVBEXJexTpk+saC3SNvzrEOjDzT88YEgx2OkZWTdGe6/n3VLwP6plOgqIF24DZ0+gd8
         I+TN/08Dwc8ix6IGUM3vyqfknl1s5PMtAbbTWsQ23cFPK7VStofaK6zF0h6ns6s+0Jx6
         aG8bpVQHCbBHzVmbDUbb8Et/TShzevASki+LktXMJDYlc69G654YE3x/A/zzpeLSAV2b
         Lr/pwzAGuqN4kj4yehN1cBWVbhNq0dPJL+1JbfCxqDi+bc8XmvWC4zFLaO0wTuDAnBCA
         qzww==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533/hs1oDUogpfJn9zDqor0ZYYpfa+pnHLYwPLahJEyogHLNmwGQ
	uaFRIFuGankAYTe9H5d1308=
X-Google-Smtp-Source: ABdhPJymOfIuCX4mtd1v2ZSgzdJcVpFEe96z3sCm/xex2uxic1k4WvSx9U2pkBzaqzI6Mv6E9R+CEQ==
X-Received: by 2002:a1c:2903:: with SMTP id p3mr3730284wmp.170.1601046128858;
        Fri, 25 Sep 2020 08:02:08 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:1b86:: with SMTP id b128ls1448699wmb.3.canary-gmail;
 Fri, 25 Sep 2020 08:02:08 -0700 (PDT)
X-Received: by 2002:a1c:55c3:: with SMTP id j186mr3639278wmb.77.1601046127949;
        Fri, 25 Sep 2020 08:02:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601046127; cv=none;
        d=google.com; s=arc-20160816;
        b=iJTigIx7vZrh7aJcb36ph8dqQ0Ffd72QKEZEiuOF5qhJlkZ+mOfjDgUQ0s8KWgSaIA
         f40ZGRi58ZCZLb7CXzluvf/2wbMicLbRa22GS8Sdlb72drnWbQkpg+S/r5m9QLmn6Xyn
         h7Nf1YytxgCphbHDxvcQ7LX0ztLIa2vQVYxOfR99P1zEtC61LFFT4ZzHnewOySaBVXXa
         ol3ev4niIeYA4qOi48LJ9T6O7hW1+kQsiyGX1yyX0HzSUUKVhSZ2MRThMlZlxbarugrF
         zsaNuuLqmjhkdvr0GPUNPG4aI/Izy7h9VdtuADaAKwRK4ovT4H4uLsTjB152PvGHG+OK
         IGtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=gK3itV9zYDQbxOF88qGlpL4MmQYqLwQH2CTqaXSy650=;
        b=xeKFbE/drW2wPlATcN8O2ay4QzKewnITydWh+Bdc+VPU5z7WpkmKiJ7yVm0gWjOt3i
         vAgfaePapntgnnyZHzGT9n0n13Cl3z+72nr8/jUDU0PEy1RuOHgEGWuY58lA7SSroCPw
         G8FxRgdv/0MuP1f6XHwAC7bnKw/UyxuWMjkV+fPtVT00MWzV0BNIuxJeZOXhdyfZa4s3
         ncenyo+rzA0Lzzetpp6di5IVWuFhj7v8VKlVdI2mrfLeE5pln7ZYbXXBwskSCP2HvOMH
         Km1Lnooa2yAlYpkqRWxLtjaM+d/CRQgBxUwknmaSfim1652uJEAW7Jo9P1+poSMqLQAn
         HMrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id h2si98392wml.4.2020.09.25.08.02.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 08:02:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id A357BB036;
	Fri, 25 Sep 2020 15:02:07 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Coly Li <colyli@suse.de>,
	Philipp Reisner <philipp.reisner@linbit.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH v8 5/7] drbd: code cleanup by using sendpage_ok() to check page for kernel_sendpage()
Date: Fri, 25 Sep 2020 23:01:17 +0800
Message-Id: <20200925150119.112016-6-colyli@suse.de>
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

In _drbd_send_page() a page is checked by following code before sending
it by kernel_sendpage(),
        (page_count(page) < 1) || PageSlab(page)
If the check is true, this page won't be send by kernel_sendpage() and
handled by sock_no_sendpage().

This kind of check is exactly what macro sendpage_ok() does, which is
introduced into include/linux/net.h to solve a similar send page issue
in nvme-tcp code.

This patch uses macro sendpage_ok() to replace the open coded checks to
page type and refcount in _drbd_send_page(), as a code cleanup.

Signed-off-by: Coly Li <colyli@suse.de>
Cc: Philipp Reisner <philipp.reisner@linbit.com>
Cc: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/block/drbd/drbd_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/drbd/drbd_main.c b/drivers/block/drbd/drbd_main.c
index 04b6bde9419d..573dbf6f0c31 100644
--- a/drivers/block/drbd/drbd_main.c
+++ b/drivers/block/drbd/drbd_main.c
@@ -1553,7 +1553,7 @@ static int _drbd_send_page(struct drbd_peer_device *peer_device, struct page *pa
 	 * put_page(); and would cause either a VM_BUG directly, or
 	 * __page_cache_release a page that would actually still be referenced
 	 * by someone, leading to some obscure delayed Oops somewhere else. */
-	if (drbd_disable_sendpage || (page_count(page) < 1) || PageSlab(page))
+	if (drbd_disable_sendpage || !sendpage_ok(page))
 		return _drbd_no_send_page(peer_device, page, offset, size, msg_flags);
 
 	msg_flags |= MSG_NOSIGNAL;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200925150119.112016-6-colyli%40suse.de.
