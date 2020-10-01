Return-Path: <open-iscsi+bncBDLPRE656MLBBR4W235QKGQED7IPBAI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EBF27FAAD
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Oct 2020 09:54:47 +0200 (CEST)
Received: by mail-ej1-x63d.google.com with SMTP id ga21sf1902938ejb.14
        for <lists+open-iscsi@lfdr.de>; Thu, 01 Oct 2020 00:54:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601538887; cv=pass;
        d=google.com; s=arc-20160816;
        b=BP9dDlDlMpIpu4hwADk2EsC+djvT9gPMUDoHGLgKMcgDyNFlZc/1niCnpSOBJ67jrQ
         0nfQ5OcEvLczhUGHZrJNe6pdHrSJpY+3Z4IR275fbv7u0/ovj6fDPtT7HCTDqKqmiBMm
         9Iew8dPRtGIhfQAaj7tJPJcvp7eIH7h/urRCxb81te48T9fwraqgayKp61YXs1q7iIjv
         HW+m/yhBEstpCOG5jWsRX2nRs5quETAw84e46jqaCqYORGbDPICkiMASqiM456myccck
         djM/NlnLEM4TPYxhPAuxzoYFc8egfN/7TUJX+kufilCLuEhr5F0UQqc30x29i+FfTPGt
         45gQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=MTlQxxH1eWOk0xg6ZNAXuQKtHOnwmWVZ+DmaGFKbM+Y=;
        b=nCadjwl/NUP28o+FVncifpW90nRh0Nr32zDG3z9K79F7teG4PbtfLG25e/YnTYCK0F
         CVEq6NvYMSMjjUwPGws5kdy3jQ6lFNPRfDZRzPnRUCfQh2NQ77+Jd4BF7Sla6TOnApeC
         cjbbwp77zprbyFABrO7Er2e4KK39bjRgyF+oxI8g6/dC0l34/DPQmn4JXSEGS9M7slv4
         DM2l+9SPRcZLUpv+1CZY7MiBys2aaTqUDRlSV1M062PqFJ9BVdSUGS95Efq4VSbw9SKH
         gFDgCym9bYxCGlpeCIr+3d9CWdjUyDZzjgEqMn0K7jYxEVynV/wvBs8VG2FtcEaNHuvh
         NRTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MTlQxxH1eWOk0xg6ZNAXuQKtHOnwmWVZ+DmaGFKbM+Y=;
        b=CM7hHR4mS2WCVoOuIKxbFLcj0oH8rL9vAc8ch7x0b4KNvWB1dxG0fJTlTWVlrXhtOE
         mte+Ju7WkDBLqGO4CCp2GEBpy0V7mnFz7phfgW2A828Fh7K0Iuz0hMwja3JA7gmNv8hK
         gEuuP5rdH2SW9f5dES3DzyykN5JECVFaRjzlwRNW/rWkuHi8tDBI3LhHREmXDgHzX6c2
         b2lRNroKleMh7EQbp46mHG4l8Nd1UarylGfnOdHtngrWJ9GD5gjt2T2/zH7Fho+vYsOW
         7mfcxMzYOoXzC8rVvdJksmT3oGmFP4EeDtG4Y+qq3wC3wIQMNov/1USu6aZqIJor3K9y
         XcTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MTlQxxH1eWOk0xg6ZNAXuQKtHOnwmWVZ+DmaGFKbM+Y=;
        b=eJO2QGx/uiSFZOvTSf5LhPZtmrupTj7+czf7H7hW9YBKf4sGvhYTrFcx8wSbWEfD9M
         JN9gniW91XMwV6mUhLi2hKIBbcfA2slv8fmIwLzORlQ0WT865EFi/gmylAKG2cMkkqwG
         1SXqC8ietlOA1zcAEA+NcONc/QDaSbJMO4dqn/m8jNNgzU88EiDg+mp4imUi8PQvUGNt
         ggGzNXqFD6uJpLdusjzvK7BDOmH4+hwsBIrOt4vCj0HZrCrlj+UegPc2t8iwcej26QWe
         0ASoB39znQml7TXsuBS/4QigexW4HTkRwyD94PnfX1qKnU40Bnj5eziXRK4LQ2di3GGy
         ThhQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5338+fLuawsC0ijyZ4SxvfomrKLiH/DtaKrGT+f1ot+bcuJPLDdn
	xtqCTfAEWkwM3JfWCjN6aRg=
X-Google-Smtp-Source: ABdhPJzXgv9ewU4Ufc1ZzYTQOr4Rbbq4/jLM+/99NMC7qEe7dtiRUw/a6HMvZTrAHgKwZ4rb+CLONw==
X-Received: by 2002:aa7:c1c3:: with SMTP id d3mr6947609edp.228.1601538887643;
        Thu, 01 Oct 2020 00:54:47 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:d0c8:: with SMTP id bq8ls118337ejb.3.gmail; Thu, 01
 Oct 2020 00:54:46 -0700 (PDT)
X-Received: by 2002:a17:906:6881:: with SMTP id n1mr7000103ejr.487.1601538886819;
        Thu, 01 Oct 2020 00:54:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601538886; cv=none;
        d=google.com; s=arc-20160816;
        b=BOm5yv18vebx5XUmaZHoR6ikrTTcVPd2qgdnx8bh7/glWyydtHUVkfLSytHG9mpBjF
         hw002dnSr9QvFc0BO0ukWgMFCPeFR1pgKbP4b5AaI+jcvO1hJbBRRJzSXIn3YxEJiGb2
         JsN6hkcItNeA8CbNkeZlCT+UN6+lsQXq2zhCRBv5Yb/cEUXJ3xtGYYYnJDEKk5kKjUrJ
         NM50LWXSGbjF7K9gR8ZPwcultY49Lrsy9+s7F8qpeILogjUTB86/ZvjVt7huEsESnABC
         c3kk4ZH7QILOKa06n0jPxGIJfbr31iEqElxfJNp3tqYCnQSXSMabg/Qe16tEQ0Q/wjnb
         BnLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=+wZCVzG0Rt/4KjzYL5d+jTEUvhJkWdYcv5VUQxPp4Us=;
        b=T9qIPKyD226wln6nAVfp7hL0arQvZqH0YjhlzDrSjTSvOFYuowxZjoISceviNRsfzo
         4LWSew6SGa6sYzgLuybUPh+W4D7OzEpeG/hcwWXkuk3A5HHqyC+aTl1l5FE4Ztd9sAaa
         lqxTbTrlhjVte7IFo3+PM+isoLxcL5yJjfTxg0R+PA9ceHmbcEnPw11tZ4WW5emlGGNO
         ozS95WXsxS3ptqzyWxYUDv4jJNNPjXanrnTmU1a3n9TrboOkv1JOEOgV3UOrZ0ymJ9vr
         zLsWNZmkx8AhLjS0ioppFUOH01phKXQ5PtTMMQU+hhnfs1A2sEPAcdHujtoWtQw+Z+8t
         rtfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id a16si195766ejk.1.2020.10.01.00.54.46
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2020 00:54:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 73426AC97;
	Thu,  1 Oct 2020 07:54:46 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Coly Li <colyli@suse.de>,
	Cong Wang <amwang@redhat.com>,
	Christoph Hellwig <hch@lst.de>,
	"David S . Miller" <davem@davemloft.net>,
	Sridhar Samudrala <sri@us.ibm.com>
Subject: [PATCH v9 2/7] net: add WARN_ONCE in kernel_sendpage() for improper zero-copy send
Date: Thu,  1 Oct 2020 15:54:03 +0800
Message-Id: <20201001075408.25508-3-colyli@suse.de>
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

If a page sent into kernel_sendpage() is a slab page or it doesn't have
ref_count, this page is improper to send by the zero copy sendpage()
method. Otherwise such page might be unexpected released in network code
path and causes impredictable panic due to kernel memory management data
structure corruption.

This path adds a WARN_ON() on the sending page before sends it into the
concrete zero-copy sendpage() method, if the page is improper for the
zero-copy sendpage() method, a warning message can be observed before
the consequential unpredictable kernel panic.

This patch does not change existing kernel_sendpage() behavior for the
improper page zero-copy send, it just provides hint warning message for
following potential panic due the kernel memory heap corruption.

Signed-off-by: Coly Li <colyli@suse.de>
Cc: Cong Wang <amwang@redhat.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: David S. Miller <davem@davemloft.net>
Cc: Sridhar Samudrala <sri@us.ibm.com>
---
 net/socket.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/socket.c b/net/socket.c
index 0c0144604f81..771456a1d947 100644
--- a/net/socket.c
+++ b/net/socket.c
@@ -3638,9 +3638,11 @@ EXPORT_SYMBOL(kernel_getpeername);
 int kernel_sendpage(struct socket *sock, struct page *page, int offset,
 		    size_t size, int flags)
 {
-	if (sock->ops->sendpage)
+	if (sock->ops->sendpage) {
+		/* Warn in case the improper page to zero-copy send */
+		WARN_ONCE(!sendpage_ok(page));
 		return sock->ops->sendpage(sock, page, offset, size, flags);
-
+	}
 	return sock_no_sendpage(sock, page, offset, size, flags);
 }
 EXPORT_SYMBOL(kernel_sendpage);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201001075408.25508-3-colyli%40suse.de.
