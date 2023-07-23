Return-Path: <open-iscsi+bncBAABB7527KSQMGQEB53TPSI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3139B75FB2B
	for <lists+open-iscsi@lfdr.de>; Mon, 24 Jul 2023 17:49:22 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id 46e09a7af769-6b9c03dd4f6sf8439762a34.0
        for <lists+open-iscsi@lfdr.de>; Mon, 24 Jul 2023 08:49:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1690213760; cv=pass;
        d=google.com; s=arc-20160816;
        b=LQtv3nz5vjjltHFHBPOUeNHB80aNd2K8t25CNr3ZNdHa94Lm4X/KZrWfGkIsWP2VVn
         ipFoxyQctJmQxUH0Q6AU2Wh2csBPPVpg/iMYH1NZC73f7DsJ2DcooG4NWcrZ/poYJ1Zc
         WVOara+AGqQOFP7BH2/gcwYrk94nBioeiri60DR2e1/302sYnFmPWclgMZHXBCWCicDW
         LsRhzwpDKx3vqXVEP1m2bncApzngAMDr0SnM74lr5yjfgxhL9X92vwmtx4/+h0E2rXvv
         CcB4siGMQuMre3Ry0FF3zqd08b4NN91ETsSALPR/w1Ai1jtE46MpXvxq3PRjwVi8FMsa
         2uVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=0BETcWhEh90ej4jk8JDIgBjFlVRN5rv9/2v71vVTlSc=;
        fh=j+vdfQZzifaZty+LgS20ic7lC5PGzW+oGHF4ysdsXjk=;
        b=UmG8cSUhUpSezUCxqwjGawVd4QQ6mFCN+kd7BGZ/28AOubNxZ+iigmYTQc1I5vIesN
         diIJxvTJ0Fdnf+0+UeK77qXln8yJVe8ZxU8eUojXLAmbrwwGej/pAdthY0a27qC3jznJ
         HLwvhY0TNApLxW4r92ek2r45Zsqk+BD+J/+dGXTpQ47+Aw1AVCt+GqH64fLsDr1on872
         JxcKaG73uIFdObg17ZPNCj3P+rDeY8ARJtpl/GbThPqq1dtWczCB4wBPCj5ixj1bxHGJ
         riB7JsPJ2/bR2m1qhhJPyzBl1Rue6O018czjyXDrRFZjZB1899hjIMcaSZywXGS+zBHi
         ltRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 167.99.105.149 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1690213760; x=1690818560;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0BETcWhEh90ej4jk8JDIgBjFlVRN5rv9/2v71vVTlSc=;
        b=AkLAk/LhV6W0lQGKW4ZeoZBd35Z9Sz/3V5gykCowkgbX+td9J6K8ucaR8p2t/+Spkn
         OjyhV4TspknlL8lvZlzX4n20/qEa2r0OgHM9WOD6z96gg1zKB4ZCj6ryMprKPtabWPuO
         sJy1QSjroqj1sGr9y7nk9QBosk6PAuHdc6LbhmzqUtR47yHYn81AWErTzVhuEkpqa2BM
         xK3JW3yw1TVL9+nHyoS2TUggzeF5srz1ZeL5ZjCV3Picw5V3NtZ2mTxDzfNhrBN1SbcD
         RYZQwTYgVeN8Zzd+qYZHj6ZumTH67ksDVsGFEOTKxvj5FnDz/RV2zm2+W+AA/i4Oe3X/
         iVXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690213760; x=1690818560;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:x-beenthere:mime-version:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=0BETcWhEh90ej4jk8JDIgBjFlVRN5rv9/2v71vVTlSc=;
        b=YCsY31LSN8DkiwEGlbbiY4Ip2+7gOlMJM3A4OkxhEq/8zhGwQRM03d6RSHyd7PCAho
         hz6GkKHjMZuufg3JZ5Apf1d/n4724HnC/7jsk/Azo2U+ykTcFAxg4y215WhXikGNMvbe
         zC9MHSspteslTZt4va9KhZkk3sn4+422Qjd8J/EVRzLk0xGQhEn5kVV/frLrMW/JXY1j
         CtYuz+3NGCo4HA37CTeAoJ4cMPu7LhPgVTy8VmWroSsyXjk1JnHcCu+GHG1yyr8R2dj6
         JM6ReisWOzAxJm4K2jpoFcVY7IebnH9nHEnat8nJc0fl9pXrOW17yUBzSs494mpPiEgZ
         W10g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ABy/qLas9ua2D75gR/NRzkfjfCN+V2RAVr2y5arS1PQ1nwWGfpde7jHE
	Uo2rpIEZzU4rBQfp/PD0M0Q=
X-Google-Smtp-Source: APBJJlGeihyLql/LTQqruh1TX+NrY0iu1wKLkxpuGEFFtDMalkAt8WEf6yGj1XD56FnqOv24CLpUWw==
X-Received: by 2002:a05:6871:891:b0:1bb:7c55:b913 with SMTP id r17-20020a056871089100b001bb7c55b913mr2514373oaq.51.1690213760668;
        Mon, 24 Jul 2023 08:49:20 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:7a2:b0:1bb:6485:7986 with SMTP id
 en34-20020a05687007a200b001bb64857986ls335219oab.2.-pod-prod-06-us; Mon, 24
 Jul 2023 08:49:18 -0700 (PDT)
X-Received: by 2002:a05:6808:1489:b0:3a4:1265:67e6 with SMTP id e9-20020a056808148900b003a4126567e6mr19205878oiw.8.1690213758879;
        Mon, 24 Jul 2023 08:49:18 -0700 (PDT)
Received: by 2002:a05:6808:219f:b0:3a4:244d:fe3e with SMTP id 5614622812f47-3a596180a8cmsb6e;
        Sun, 23 Jul 2023 00:58:29 -0700 (PDT)
X-Received: by 2002:a05:6808:1450:b0:3a0:492b:f07b with SMTP id x16-20020a056808145000b003a0492bf07bmr7888672oiv.26.1690099109169;
        Sun, 23 Jul 2023 00:58:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1690099109; cv=none;
        d=google.com; s=arc-20160816;
        b=Hwae4q0cCTitJSC6JeSOg5kKbfn7MzT7lB9yD281U/0iuVrQZiasTWUgHDg1OYMhqb
         dlmXhRBqOL6TMaEFGCYX7+z+DGWZw5d4Y427PAkGY1jn5Hl0/DOeG6yQt7XhdjWWsfys
         /XgcgN3tGJEdd5yGN21i/mzyae0sjpBErozwTDrrYagWHOkQZ4Ps6dHZErzLJqfHZ5sk
         28JnId7gleaLVF1RR3WqMWzmTHXdlwhG7NCOfav/NZcnbV9l4Way5UV3N7mGLTmAEtxb
         xEoX57FHzOHsV90YmgFlxmLFVtgFf9w07DlXcbMe1NV1j9qBNCYMwbak2qzUiiFljc5l
         h8sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=GTf0JD0tGBw+0L9CvR8HMMKyyey3hBD0KqVX7hwZoqc=;
        fh=j+vdfQZzifaZty+LgS20ic7lC5PGzW+oGHF4ysdsXjk=;
        b=XqDLpKF3pT3hxROWjmhfbWBzvRI8Ou7vgKuLg23It1MN9R4mUnbpu4E49voX2UJ0Ja
         qBMvZMJ+AILTxbyNchgZlVbvM+ukyuhweU5ysq/gUcugXE7Bi1BioD0Sn8/eZr07BeAf
         OYncwqRK4konqAh2ofXQK+zi3EF56SFFnddAW6hsEGn0uz1b95IA5kJ195CMKW7paKKM
         3veZ4ctczldjYcWRAJSIlxDDab7r8D4rb7a8JOKGflNjszva5kcadmHJsMxSlJscT4BJ
         2QIreWZMjBqaiIacnbzs4jeSymrM1uQoAIwZj5TXkxK4zAvfgwEQKBCBx6dENtJd1Dy+
         enMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 167.99.105.149 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from zg8tmty3ljk5ljewns4xndka.icoremail.net (zg8tmty3ljk5ljewns4xndka.icoremail.net. [167.99.105.149])
        by gmr-mx.google.com with ESMTP id p2-20020a17090a868200b00262f57676a1si355057pjn.1.2023.07.23.00.58.28
        for <open-iscsi@googlegroups.com>;
        Sun, 23 Jul 2023 00:58:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 167.99.105.149 as permitted sender) client-ip=167.99.105.149;
Received: from localhost.localdomain (unknown [39.174.92.167])
	by mail-app3 (Coremail) with SMTP id cC_KCgAHf76h3bxkS2x_Cw--.19074S4;
	Sun, 23 Jul 2023 15:58:26 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: lduncan@suse.com,
	cleech@redhat.com,
	michael.christie@oracle.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Lin Ma <linma@zju.edu.cn>
Subject: [PATCH v1 2/2] scsi: iscsi: Add strlen check in iscsi_if_set_{host}_param
Date: Sun, 23 Jul 2023 15:58:20 +0800
Message-Id: <20230723075820.3713119-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: cC_KCgAHf76h3bxkS2x_Cw--.19074S4
X-Coremail-Antispam: 1UD129KBjvJXoWxCFWUGFy5Cw45WFyDtry7Wrg_yoW5GrWrpF
	WFg345A3yUJrWIkwnrXr4rGrWSkFs3XrWDtFW8t3s8ArZ8KFy5Ka9rKw4Y9FyUAws8Xw1Y
	gayDt3W5Wr12krJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUkv14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_JF0_Jw1lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lc2xSY4AK67AK6r4x
	MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr
	0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0E
	wIxGrwCI42IY6xIIjxv20xvE14v26r1I6r4UMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWxJV
	W8Jr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF
	0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUm-eOUUUUU=
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/
X-Original-Sender: linma@zju.edu.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of linma@zju.edu.cn designates 167.99.105.149 as
 permitted sender) smtp.mailfrom=linma@zju.edu.cn
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

The function iscsi_if_set_param and iscsi_if_set_host_param converts
nlattr payload to type char* and then call C string handling functions
like sscanf and kstrdup.

  char *data = (char*)ev + sizeof(*ev);
  ...
  sscanf(data, "%d", &value);

However, since the nlattr is provided by the user-space program and
the nlmsg skb is allocated with GFP_KERNEL instead of GFP_ZERO flag
(see netlink_alloc_large_skb in netlink_sendmsg), the dirty data
remained in the heap can cause OOB read for those string handling
functions.

By investigating how the bug is introduced, we find it is really
interesting as the old version parsing code starting from commit
fd7255f51a13 ("[SCSI] iscsi: add sysfs attrs for uspace sync up")
treated the nlattr as integer bytes instead of string and had length
check in iscsi_copy_param.

  if (ev->u.set_param.len != sizeof(uint32_t))
    BUG();

But, since the commit a54a52caad4b ("[SCSI] iscsi: fixup set/get param
functions"), code treated the nlattr as C string while forggeting to add
any strlen checks, hence leave the possibility of OOB.

This patch fixes the potential OOB by adding the strlen check before
accessing the buf. If the data passes this check, all low-level
set_param handlers can safely treat this buf as legal C string.

Fixes: fd7255f51a13 ("[SCSI] iscsi: add sysfs attrs for uspace sync up")
Fixes: 1d9bf13a9cf9 ("[SCSI] iscsi class: add iscsi host set param event")
Signed-off-by: Lin Ma <linma@zju.edu.cn>
---
 drivers/scsi/scsi_transport_iscsi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 62b24f1c0232..8ade01da3045 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -3030,6 +3030,10 @@ iscsi_if_set_param(struct iscsi_transport *transport, struct iscsi_uevent *ev, u
 	if (!conn || !session)
 		return -EINVAL;
 
+	/* data will be regarded as NULL-ended string, do length check */
+	if (strlen(data) > ev->u.set_param.len)
+		return -EINVAL;
+
 	switch (ev->u.set_param.param) {
 	case ISCSI_PARAM_SESS_RECOVERY_TMO:
 		sscanf(data, "%d", &value);
@@ -3203,6 +3207,10 @@ iscsi_set_host_param(struct iscsi_transport *transport,
 		return -ENODEV;
 	}
 
+	/* see similar check in iscsi_if_set_param() */
+	if (strlen(data) > ev->u.set_host_param.len)
+		return -EINVAL;
+
 	err = transport->set_host_param(shost, ev->u.set_host_param.param,
 					data, ev->u.set_host_param.len);
 	scsi_host_put(shost);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230723075820.3713119-1-linma%40zju.edu.cn.
