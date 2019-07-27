Return-Path: <open-iscsi+bncBAABBEU67DUQKGQEJULBSDY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C581781AB
	for <lists+open-iscsi@lfdr.de>; Sun, 28 Jul 2019 23:09:40 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id x1sf50313853qkn.6
        for <lists+open-iscsi@lfdr.de>; Sun, 28 Jul 2019 14:09:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564348179; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gl9XFEaZQ60UhfLzVjxNNby9M4zthSC42zD2l6LdflEYV/9P5BmaolTeqqAenhaLSS
         RhjmYmQVh52arH3nFIxFZSCU4Pg/ZTBmlEjusD/64KYn+Cf6/MEKhELPwfpnnKN8baSY
         KZRcaMTjrMcZQqkyuuzd1WiCM2R53/TLjCwTvXYIxsMONiLI5GBI/we22/nltoGmKsyv
         f84Yrm443cTLxPAGtT/5YxqXpYGt0OSXyAUo8wIhL2c4ZUFf9pAvOWRi0fFxI5WiVD0s
         x0j6aWkDKwtS2EKflcboiMDOziWp8Oy/oFTEFOcQhEbuS3XfoHXB4Mp//Jkjar1ncHIE
         f/ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=QXyc7OW96tTdwrUPS5CkGpF5W1u1upMefqcVx1HrabM=;
        b=Y4zZ6G5VKZKezXzF/zRGClQkNtud84GruTobpAMD4R0IFOAgM9AAQ4shM0PCKzx8ws
         nbUWU2neFLNs8U3zxnzpN4k16h6TLV+D4bwdevjWU+LbpSPf+jrju98TjXcB3MbVPUAm
         xYyqCwKqwvyMXJ8LNK1qpnBaiViKqoJQIKreGCCLKl2VLbXdVC/zTA2fDbwxyOKyBzzX
         TSKFzexYfAg+GRA/SjfMCkkQiM9Dnb8mux1iNmbd62XY/byxlXbX5uxn8bu+piNwFDYN
         rf7a70U65FbzftJfIsy+5rMc9Y6VlBFKPQg47cSZdYBVlsv4T6ldmmH9JqBJI+y8WfsI
         xglA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of xywang.sjtu@sjtu.edu.cn designates 202.120.2.180 as permitted sender) smtp.mailfrom=xywang.sjtu@sjtu.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QXyc7OW96tTdwrUPS5CkGpF5W1u1upMefqcVx1HrabM=;
        b=SzFmYmhKr80bUGFTIiG3nPiGMwA7pwfmHHN9h+LoMfVqv5MVfNadQce5mFHQZQ3YZ9
         /mR67mIAZ6Ney+KlIejkWiQmy/jOH30c1/i3sEtz3dR2qcfSW6TVZPvHW23EuI6RJZgW
         8cIl5F/ADbuT6FH8wMriXfTg0Z28puYRrHDiABfvSX7fHQ75PTAEE6L/e6CuAE3YBcWx
         e2GTe5IGjGR4FJaunoIe+ianEXufnX972bZj4Kg69EVfzoeNFJ9t54rOzgkZnx9Px2Bw
         JzjyMA/nu7/1ysUBvn9T3Se5FPqQWSArkQ3UJ7O4z6bWo8PTVfZ6cY6G7jIRWz9ttSf3
         fq0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QXyc7OW96tTdwrUPS5CkGpF5W1u1upMefqcVx1HrabM=;
        b=fCKYfc/D0sdc4qeYiW7grln+MhwE0uLqJL8kev0RY2OKyGVHDVaHOjMwBFYGgxnhkX
         EaJ88QXGY5TWSUpKsQITkehQi0ON6CuXfK1hRvV/b55Ew2HiRT0p5p+4Nn8pTNdzQ3Wq
         c5wjXWh0DSycHlIF58RN+xVsla5S6wVm8NuLmnmW6M+XpY/JI8nsWDFKzLwX4HAV61wm
         hCOliKWaVjRq1v3WrnukN3CDMEDU3C3NGuJdig1JJNUzv4+q/PUjVCdQVq4/J7ECIRkt
         E1p6JgZ1gewKOO2+04eG8TjLP57NmrtmGa7nUp2fMHjpGJuG2Kv5IJpwmsDAHszsgQkk
         gNLA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVgEaR9Heq3FQo9NdbZQi3XY2A8Xt7Ju16bRqclVKhynMnDmhup
	OKRWluluhhiBtTv4ImPZKJI=
X-Google-Smtp-Source: APXvYqwbEqij+BUI9Pm60Bh0XMrN1wfI4dI3eERqzE9mjJvIhbbmGk9ng5Z+WxPikmiLYpZVIuBawA==
X-Received: by 2002:a0c:895b:: with SMTP id 27mr74749559qvq.94.1564348178764;
        Sun, 28 Jul 2019 14:09:38 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:3507:: with SMTP id y7ls2606008qtb.0.gmail; Sun, 28 Jul
 2019 14:09:38 -0700 (PDT)
X-Received: by 2002:ac8:5311:: with SMTP id t17mr73301204qtn.304.1564348178409;
        Sun, 28 Jul 2019 14:09:38 -0700 (PDT)
Received: by 2002:a37:4789:0:0:0:0:0 with SMTP id u131msqka;
        Sat, 27 Jul 2019 03:40:15 -0700 (PDT)
X-Received: by 2002:ac8:26d5:: with SMTP id 21mr69493187qtp.266.1564224015332;
        Sat, 27 Jul 2019 03:40:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564224015; cv=none;
        d=google.com; s=arc-20160816;
        b=ACurbYMBhGs0vyR4KhTC6uN66y1bvehrk+1K3VKMnboxUghuM1I9uTyA5egY2SbGgZ
         NYG+tnoArtNFtAVgEeLvQTxFopGqsNVWx8BedPfg0ziITUfvhzwZ4oKSx70SawVX9A3U
         bmw7QWm08R+YZkQvGHIPRLsi1ZW5GnQ2UOygLedfSjW79PSUcWYpMRjSctMiODuORsoP
         O1YV7n2jyH3QLwUdefR5kV1hvc7aovAN5btOsZNi8/OQCfsPplGxmQ3VI/TyxQiTB+fs
         6o8oK/0AYOEWYgUtFDhXDR0ZkLmeKNN/H5YvQhn87DptYeW7HhrOjPkr9A7q+kkizdtq
         z5yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=VHvOL/RjA7gWPexbI+dUM9aJAMRrtfHSfwIMO9nhpSc=;
        b=RYlHEv0VbSmDdYP3oF7zBnVlILKhB1F1sgw8RjpONVSOlJR34XalcZDv240IHgVlpM
         v1wigqrFuBKz9cwcJDPm7QCkME7UKuAO2NBkCC9jfsbhAMVpTrkesyTiTzlDeq5gLKJI
         OvoMEK7OoCvVB5X6S+vyqwiXlYF1xZvAFYbz5b9zfNtgi12bxALSEStJU5hYObAz3YGi
         UWAVJ0hTImGPg/srC48vHIuczCu9WP1Jw6Wh05A8m8MbLhmIKZSbCi6i0tkjDJeGvQXz
         4mf37SO1P/hlIzDMCPosEIpG6Vgu+JsIg6a0ZN4EOkI7mSI2OvjCBFNnKHDmKeIT0LMB
         7Jdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of xywang.sjtu@sjtu.edu.cn designates 202.120.2.180 as permitted sender) smtp.mailfrom=xywang.sjtu@sjtu.edu.cn
Received: from smtp180.sjtu.edu.cn (smtp180.sjtu.edu.cn. [202.120.2.180])
        by gmr-mx.google.com with ESMTPS id v19si904841qth.1.2019.07.27.03.40.14
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 27 Jul 2019 03:40:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of xywang.sjtu@sjtu.edu.cn designates 202.120.2.180 as permitted sender) client-ip=202.120.2.180;
Received: from proxy01.sjtu.edu.cn (unknown [202.112.26.54])
	by smtp180.sjtu.edu.cn (Postfix) with ESMTPS id 797F01008CBC3;
	Sat, 27 Jul 2019 18:40:10 +0800 (CST)
Received: from localhost (localhost [127.0.0.1])
	by proxy01.sjtu.edu.cn (Postfix) with ESMTP id 69E8020424204;
	Sat, 27 Jul 2019 18:40:10 +0800 (CST)
X-Virus-Scanned: amavisd-new at proxy01.sjtu.edu.cn
Received: from proxy01.sjtu.edu.cn ([127.0.0.1])
	by localhost (proxy01.sjtu.edu.cn [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id F3CLmvPZ_FnY; Sat, 27 Jul 2019 18:40:10 +0800 (CST)
Received: from xywang-pc.ipads-lab.se.sjtu.edu.cn (unknown [202.120.40.82])
	(Authenticated sender: xywang.sjtu@sjtu.edu.cn)
	by proxy01.sjtu.edu.cn (Postfix) with ESMTPA id 3E51E20424202;
	Sat, 27 Jul 2019 18:40:10 +0800 (CST)
From: Wang Xiayang <xywang.sjtu@sjtu.edu.cn>
To: 
Cc: lduncan@suse.com,
	cleech@redhat.com,
	open-iscsi@googlegroups.com,
	Wang Xiayang <xywang.sjtu@sjtu.edu.cn>
Subject: [PATCH] scsi: use kzfree to free password
Date: Sat, 27 Jul 2019 18:39:58 +0800
Message-Id: <20190727103958.2260-1-xywang.sjtu@sjtu.edu.cn>
X-Mailer: git-send-email 2.11.0
X-Original-Sender: xywang.sjtu@sjtu.edu.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of xywang.sjtu@sjtu.edu.cn designates 202.120.2.180 as
 permitted sender) smtp.mailfrom=xywang.sjtu@sjtu.edu.cn
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

Similar to commit 34bca9bbe7a8 ("cifs: Use kzfree() to free password"),
password strings allocated for CHAP should be zero-ed before freed.

Signed-off-by: Wang Xiayang <xywang.sjtu@sjtu.edu.cn>
---
 drivers/scsi/libiscsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index ebd47c0cf9e9..67d66e6dbdb0 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2854,8 +2854,8 @@ void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
 
 	iscsi_remove_session(cls_session);
 
-	kfree(session->password);
-	kfree(session->password_in);
+	kzfree(session->password);
+	kzfree(session->password_in);
 	kfree(session->username);
 	kfree(session->username_in);
 	kfree(session->targetname);
-- 
2.11.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20190727103958.2260-1-xywang.sjtu%40sjtu.edu.cn.
