Return-Path: <open-iscsi+bncBD54HHNYIIIJL5FY7MCRUBBIUD3XC@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BC82790F3
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 20:42:30 +0200 (CEST)
Received: by mail-ej1-x63b.google.com with SMTP id r14sf1357514ejb.3
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 11:42:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601059349; cv=pass;
        d=google.com; s=arc-20160816;
        b=ncPP0wNbFjcsKZXImynMHe/np5paXe5ptrEM/rp9Y/HM3hnFKHe9WTUe9+M4T9Vbjd
         zsX7Es4koZ4TzDiQGrcE8ahQtuEd32/613Jc5Jcj5uwzb11P8gKqtS1BjFt55NQQgmou
         j6QkJKWHA0i2GR+c0Fs2DmBnNzRZKKsFb/4BDBhwrXVz4Ov+yEhkU8v4/HXbsKl1EzLX
         TvliBNnkuL5mXkPlBuk3kMFqOJsEl5cFO9dvt6R6wmnJIFIXcI83AJPlR1dNGVyw6trY
         uvyWu/yTgr8D/khdvrxvviUEb5cgiJozXdfJklqmG80aCEzM+PlBsV3Pa79KgzYvr+MO
         KeCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=4tRIdR0lWONK/xFPFhYEfkJRQeMqL6qUdcVbITw2MO4=;
        b=mY9GnXGS5L5sZmxbo0Hce01c1jjH6IH8y9UNmt8q9233pH8YyCz4M7ctnjFD7h7xuo
         aFz1FcAP6Db1jqeL+CgpYTxohnTK5P5sTCaDuHDikIOGawC4X6ObDFyUsRYtxLA07xZz
         R1x9GQkTJymWIEczONxo0UpTNB2cR04R3f9j31gPZadaIYg43/VYy18ScA1exLzKcLWK
         NMI/QEa+ogZEVStV65twjank171/XcjSpimz3/t+p9qrmdJ3Vi/oHNBUQDu1nJcaWr49
         6CHcf7Rr7jd24z24UdVKaOGc5T+AS4eTEz9YoH4opFGYPUebEKes1l5lNLV+WD1idxQi
         WAcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=dkHgCknQ;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4tRIdR0lWONK/xFPFhYEfkJRQeMqL6qUdcVbITw2MO4=;
        b=qMBlPCkQMW6c1mNGBZI4jmF11RcgoxLDpCwBgKGMz3e8JyEsShCqmWanNHQ6lrncWK
         pEgkytwMeU7A9WLn/MRPyVagGIjDhDFBZIT6zoc5y+pkW/nDvdiTx3iTOiOtGphwV5YB
         RmbZyuF0p1Br2HymNaMW+b9+fKhbbeTAZ8Lyqk2SxAT/zWXVD6Sq1qcntA4WFKf2IJX0
         G2mAZ3r0EaVfcmeKXGUq45SfJ9M9CkVmoFBi5ogoSY0HAhqldFK/ddjjulAkWsbXj581
         SXGx5440zmlcLkwhQd2fayW2M0754zyQcvY5mkDz9FF8l3vPSEExqZZMmbz7c/ke0UQ3
         LcXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4tRIdR0lWONK/xFPFhYEfkJRQeMqL6qUdcVbITw2MO4=;
        b=o1fKnQuYXmj/m5F9+uamRuzMNyxFeC894i8DzFV/JNvN7W13UpJyVoS9UW9USW7o9f
         K6pd8yn/clFj2YDyn5+IMJbO1ua2If9C/k26jvMdXgiopE93OVkBuQK/mSB50ldD1LI0
         GQR4xFsog4WGwI991ur+RBscdISNBXHKXb2x1q+tKSRdiRRZsqcsAGkT+70SnGWwcb8M
         1k9Z5tvmdsLFCAClTBvdJYPF0OslGJPPt5WieNVHkznmwqPZZtGTHbyFjvfQmTtCo3+5
         XX8wbj+VZ0QVapT4xn00LLezDXDXAVPnyC3WXW9eYVG9emXdfwrNyKP8HVDVJtbF5U0l
         s0rg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532nfA9KyEpwlgklxcc1ZbMldu3d9LDdv5AlI2VMro3F0RF/0u0z
	EXWlYEukxSIVUm6WH0hHTh0=
X-Google-Smtp-Source: ABdhPJzLCR44ssi2uPQ9tU9Zqn6XtuvlI5W9Tvda/MI5T8Kw+IDgWvvn7UYQq/iotYC8EnfqsTJPvw==
X-Received: by 2002:a50:fb0e:: with SMTP id d14mr2938371edq.172.1601059349778;
        Fri, 25 Sep 2020 11:42:29 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a50:8a96:: with SMTP id j22ls3860300edj.0.gmail; Fri, 25 Sep
 2020 11:42:28 -0700 (PDT)
X-Received: by 2002:a05:6402:144c:: with SMTP id d12mr2882522edx.168.1601059348654;
        Fri, 25 Sep 2020 11:42:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601059348; cv=none;
        d=google.com; s=arc-20160816;
        b=wR+xMP/orbDbAUvFklsjFIRbJzCulzWbT4NmcPq5Fvm9XrXh3uRu19GsMhTmGhz8qd
         r8ZiXm8bQi3d3PME7z4D4u+PKU3/w+t0A+mjPRJPanoarx8SNREnq5UNbsHtTknDHn6M
         812KlEA2GoBPfOpkWWHRxUrWfHEt6jIpXFS4c3gHF5yb0UB/Mjw3gim5hGTzNP24eNlk
         wanphEN6llBdlWuNcU7AmYEf2hzqSemilGsJ/tM77s2ZpgH8opHSXKgxxMcAGYSjfLz1
         nI1HJSTFbQQxlULlTe+z+vt1KHfyQOzOXzIYCFtfnC82iPb6SaFOmWosVBWA1YeOZyhZ
         k2CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2Kq1FxqxZLYWoE4X3kI+VDC0KjL+XQlYmdMO7aSdeHQ=;
        b=Wj2CTPIUfV6s6Jjau47O/NMGpNsioEa4o8XKYdFM9EcEbqe/DNI1U4DoYncSXrtZAv
         GSww313YbPi9ac90+W09IH3pwes7UXNd1/he/j3/VN5diay2vFstbiEd182/2N/pHwPm
         F86uN7YUq1anUDhH+DslbH+lFDzGlpBLeVX6nkmabRJwG3G7l5xjuxawPqKHU2EoZ1N9
         rzjKXJ2NCj9wAt2qXqd2iyGgYUB4fFk1bNGXylBwZz+0qe6tIL9yrD+9QYMx2PpsgvAb
         shZBE3xS/Qb/b7bfrXtzE/XwEemCmBj/xrPyLUtb7Miwfw8Bsb8LSoI56C1xmZ/wHFL2
         16sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=dkHgCknQ;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id dk15si129250edb.2.2020.09.25.11.42.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 11:42:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 2F349AC68;
	Fri, 25 Sep 2020 18:42:28 +0000 (UTC)
Received: by localhost (Postfix, from userid 1000)
	id 8D666514D99; Fri, 25 Sep 2020 11:42:26 -0700 (PDT)
From: <lduncan@suse.com>
To: linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	open-iscsi@googlegroups.com,
	martin.petersen@oracle.com,
	mchristi@redhat.com,
	hare@suse.com,
	Lee Duncan <lduncan@suse.com>
Subject: [PATCH v2 0/1] scsi: libiscsi: fix NOP race condition
Date: Fri, 25 Sep 2020 11:41:47 -0700
Message-Id: <cover.1601058301.git.lduncan@suse.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=dkHgCknQ;       spf=pass
 (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=lduncan@suse.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=suse.com
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

From: Lee Duncan <lduncan@suse.com>

A customer that uses iSCSI NOPs extensively found a race
condition caused in part by the two-lock system used in
iscsi (a forward and a back lock), since sending an iSCSI
NOP uses the forward lock, and receiving one uses the
back lock. Because of this, processing of the "send"
can still be in progress when the "receive" occurs, on
a sufficiently fast multicore system.

To handle this case, we add a new state to the "ping_task"
pointer besides unassigned and assigned, called "invalid",
which means the "not yet completed sending". Tests show
this closes this race condition hole.

Changes since V1:
- Removed two redundant lines in iscsi_send_nopout()
- Updated commit text to be more clear
- Added this cover letter with even more info

Lee Duncan (1):
  scsi: libiscsi: fix NOP race condition

 drivers/scsi/libiscsi.c | 13 ++++++++++---
 include/scsi/libiscsi.h |  3 +++
 2 files changed, 13 insertions(+), 3 deletions(-)

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/cover.1601058301.git.lduncan%40suse.com.
