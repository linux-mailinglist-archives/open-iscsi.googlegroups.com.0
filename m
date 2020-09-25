Return-Path: <open-iscsi+bncBDLPRE656MLBBYEMXD5QKGQEECXL72Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id BD423278BB4
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 17:01:53 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id n24sf1123385ljc.9
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 08:01:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601046113; cv=pass;
        d=google.com; s=arc-20160816;
        b=DKVWt4N6vk8vsURxZKeirSNgID1C3gU784zga7rtefEfC5lsCWivUPF8epb7m9YC+i
         sMmg8kg9d+tzHCbB0u24b42XvDB8kjO67TmPMNseEW6V2AjTL5tjcfMGJ6VYX00XBb8A
         0meqlgoMBPTQpWvuibc+OBHFVDWy35vFRXRxuM76hShRKxjwAeY12Wxc4MEn70+h2vg2
         yLU4lDnQu3vTKHH58R1ohPpPJlG62WzhyspSSAnEOFqzgvtvEok2TvFgHN2WfFBx6Y/a
         4EC1Y+YzNFmN40jALMd01lvQKcB5aQAwvq4VLLhZ3KC5kQaIDAgZndG5QV8XZ+f/AqxR
         OIWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=44QiiOpu9dK2lZiyjGYEF5XY9vk/VpuqTdniy1XOjjM=;
        b=dia8OvlPzv6yu9BaOStia3SZwuramiP8yYM54YD5jUDYl+swULPBj8QeY0ORkiM2uy
         awo7xd1EEPgs+XVodMWDB3OkCUlq8V6Hwm6POCedJOdnaljSOnLZvvyktyhsxmlU9rh3
         OXN607feNlTADzVnBwmrf3gVGvQ1/xHMhvmNICDtmcLQReTkOWiQy3v9ZmGazel7kPr/
         IRsJppSEJMjuJJW8WC3LChO82Zp+wL4vh3RSaNm49SQ6biYMb2c5AgyYG4jPi3c4BBYn
         bsTPldSxLgDSVGekw/DaVSHBQFFvNPueGcU3fMcZAcK5IqQypMpxJeKt8+D7UQG3GiMN
         8Hdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=44QiiOpu9dK2lZiyjGYEF5XY9vk/VpuqTdniy1XOjjM=;
        b=KiPp8Ql0QYY8e8oq/RFnfnegj3xG7LvOuxBWeM8NuM8vaVlds+e9gsLECUHv/AidiD
         33cJGmn8wdFHcczqprEAMGNtF2laezcjJ+dyLeJxlDSqAPslXE197/mNOcB8ps6avKi3
         L+O2lU3b0uPv4GzHSMQaYrOIEWg0sAVcDBeETr98w0SDBCNz9yuEPZFqFNm7IgakhH8O
         J9Jubk/wcSjySlFl6Sku64KkCRKaM+/qFRxzeuH86gwPSVYIIyfgawDdKJUT5ZzfZul0
         z6fbbBxFyr21z7N8FvVmAJnZC0UqbwYLYRczaY0LIYivyrVIZjDEyXOp9CeiaR628lYA
         aEmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=44QiiOpu9dK2lZiyjGYEF5XY9vk/VpuqTdniy1XOjjM=;
        b=SbBmbbX8hrOBvluZlB0B20OxTnAHnTkLTz4XmkAePRlaAeOTj1MbgVTn9qcFH/liEu
         vycMtQEyt/MXrD/dvc3BT3o4MYH+10Akl7fs8V8qvN2OQYKU3tlcBAfl8kYP57mUgkfG
         Jqp1Bp+u+j9yQz/6F4/q8KDGZa+v9hSoVVHlII1ER5sNCrCK/Nan0294GcRcrnbcjxQo
         2g7pl66y2OxiPusEVHyrOF7r1wb/VWWzDC4I7hj7TrBWc22HyTsvU5UnljNlMYjZXWgy
         P7Xnu23o5wQ1JoxgWyw0x2R3xUJ0xRZjzpLObcQAN0jx5rgql5qJIGqOc3FC+ZqvELot
         w1bA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530LTLcXqHuJAqc1vRe4d3v2x6yShqE0dV5jZlxEMSf0W44FmJUE
	8jvb4WotsabtUek2gYkOmAI=
X-Google-Smtp-Source: ABdhPJyzmw1xwEcwviJNssEcnrFOLyCy1THsY6lICMgKq0UKp678qGF0PV8eix9Po0gkV29aV2j0SA==
X-Received: by 2002:ac2:434b:: with SMTP id o11mr1613237lfl.576.1601046113020;
        Fri, 25 Sep 2020 08:01:53 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:7c08:: with SMTP id x8ls435765ljc.6.gmail; Fri, 25 Sep
 2020 08:01:51 -0700 (PDT)
X-Received: by 2002:a2e:8904:: with SMTP id d4mr1657042lji.322.1601046111879;
        Fri, 25 Sep 2020 08:01:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601046111; cv=none;
        d=google.com; s=arc-20160816;
        b=bhZjrB9ByxbGMNMS0NPZwtX2Zika2Uz/Xj9AjDImRAp6+IRXIFNbk8djRtDbaVWOiW
         x/qV9n64CJNU/t0ajCqR+cHsgxtg7YBcRH6ZXdegeQOx54DJcIc6d4wUhoMjiOrMRJWb
         KRmhcZvCYenWxF2TjK4QgmlJjbBFi1/nuDP1pDaaF/z1RZJxTzB1HdgMymX4Y86urCmS
         b9QSvppVAXUSF4boZJ0LOcKHhbiZ6JA3fd+HOHMMgZmP3dezLT1GJDkEIT2Bi5818dn3
         lzimQ3w6i1HfBsdkKCmbLYXIk/lG2mtDZAUYWsaF0v9CAbGgA36YB/vsxNOoeoJUtVVU
         KqZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=+wZCVzG0Rt/4KjzYL5d+jTEUvhJkWdYcv5VUQxPp4Us=;
        b=pmtRUpTM48m/gF7/XU2rMy4GnOcfa36WoS332aZOscNwqxt3W7lVJgZ6dWvm7Ho9lP
         9Q56L5KeFyf8HrfrPCaTwHKOs+tyFGDtvGbl8XOZIYid8T+gKFkacNcz0fR1VMzQCz7Y
         Autz3O/yv7GK8y6FI1s9HlWCyKplH8fJWAyUlosUFwzevfCFp5b+Rq/2n7FUEt48MCUN
         Wunfm3JjObWdRpwZ6+mmXrVMKhPBCSVZX7lrgWpDp3UfKTZoZyLcd+T0+htzZcp1JvDK
         GDI+LYPkREJZUwGWR4cnQncxqgTLWhBpgHSTbcFVUbKx2pGoHtHkdB3kKVUOX8lTdhH6
         wjoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id j75si96939lfj.5.2020.09.25.08.01.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 08:01:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 45629AD72;
	Fri, 25 Sep 2020 15:01:51 +0000 (UTC)
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
Subject: [PATCH v8 2/7] net: add WARN_ONCE in kernel_sendpage() for improper zero-copy send
Date: Fri, 25 Sep 2020 23:01:14 +0800
Message-Id: <20200925150119.112016-3-colyli@suse.de>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200925150119.112016-3-colyli%40suse.de.
