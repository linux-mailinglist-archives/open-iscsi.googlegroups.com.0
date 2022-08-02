Return-Path: <open-iscsi+bncBAABB5MSWCLQMGQECEFQSRQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 435ED58A01D
	for <lists+open-iscsi@lfdr.de>; Thu,  4 Aug 2022 20:01:28 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id g30-20020a4a925e000000b0043580fcc128sf242884ooh.4
        for <lists+open-iscsi@lfdr.de>; Thu, 04 Aug 2022 11:01:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1659636087; cv=pass;
        d=google.com; s=arc-20160816;
        b=MmyZkjcNWgQFuAC1KPzd0w1fNcUT95R5aWPbUE4iO4hENXlntjE380uxpfPX4XiRgY
         1UgcViUtgMnXWUjtVuQkaUY8Kv6jEkhMfbgJkUaeZEsQcJV4U6b4PTX1zaG5bm0Zw9eS
         jrLWivD7FkSiX9OTxKY76BfDJHEqZFK4MgM4c2yJKDqJQT1s0GnlEoqFt4gYQLfEbODi
         YjyPikpYvS4WMvyzMGpw2hnakMrPQ+4XLuxqWzFnsEyu+NQret8s/sso8UgX9JuBF+v8
         02RM+Lu5ePhIwcvmSETGpO0iU3g1bznRAH/tohf8AwnKxBApr9DRTxLjT8fhb4Jmi7+6
         13yA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=DqkVYD0uA3M2ZS7DIXe0J/Hd8JjgBBTL5GEl5aU1mLw=;
        b=xhaIcX9j2q5CqQ/9D7k2+Lvi2WewnNeSkNR8IMboj7UGhtEPIaQRJuEC5N+Vn68kKx
         DBrqLqrbV91fYVOO33q/SjFX5BYZxFc8Vl5wIePEl7J/wL7cxoT/mg6WQ9I92XVtBmc8
         2VRLUwWt0zaqewyPcR3SkpZbEYH5anDHQJm/2lSZ9jX01WzQRxuLfQvPe4zRTQTufIue
         8mM0f1sW3dlTyEJ+NrEunZ1GukiGz1s+L8ygGe7wkPARMn9N6u/cJbL6Hxo2TGyzK4CD
         Bfnha8g65+daUaR0wh0NGPWn6aDwqSEQ4A/7UXwmKCo+JtB81La6unwPvnglDk8LHYpB
         s8EQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lijinlin3@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=lijinlin3@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=DqkVYD0uA3M2ZS7DIXe0J/Hd8JjgBBTL5GEl5aU1mLw=;
        b=e+0KhoA6UEQlEXxBUdOSiK+cdRgGg+kfppbOog7t2k5uqGqB/yYZFBXqsD0A2jGINu
         EvkYUFlv9CZpVWicWNXsIDxWmIbZxUoNJB0oQaT1RNLA2KBmqSd74H9AXplGgOc52yrY
         +V+alCTFw7n6mJ4yHBki1CLrmlQxfAg1udQzIo/pezZKnjJ3WU9HdHS9pPoKB8DE0iOm
         15gx0G8AGUOAu/hTee0OtCTgQAJE+Uo4fLTCQTRJZojVpPSxc5M8MR0O1aa4cUUrC7+H
         Tu/MlJHlctKMw5Z04tnSlsW+aGcRql20YK/NFSqaHhhzHrZYZ5nUoxYi33Bwu5DOt9/z
         kPTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=DqkVYD0uA3M2ZS7DIXe0J/Hd8JjgBBTL5GEl5aU1mLw=;
        b=QdFuP2LOWxkedprl1UceK04+MQWjtTtbl7EKzUBmcT0msKvmH7fVq9xlWhKQdRQ6pg
         MiYeHl/+i62obQqm2AzUHY7frxfpD1F17XRkPOetlPBi7dSKrEvgpac8jLxV6wiZYj3x
         waaKd8wCZq+0/X3OWjoTBGR/kvzMJFlPP4a1gHpdeamKqjNs04sbHrQzQrJmpzE3ow86
         Z0v6gbWCoHsWYZIAyZBVaUNrs+eWDMO/ARLuGDNwPumSbjBcNWdV99elHn/eq03X4Xnl
         ynu5pVgisc1A3W3ksaR2+zw7cGgEZ/wzwkP11LHRiWueeXOrNTi2d/jreW8dviuxOoHE
         ohVA==
X-Gm-Message-State: ACgBeo24ekcQ2jxN59G+02SVZRDZeT+ej/U1Vc+bEnB5KhKQRruqIrHK
	TQCX+cVC/5mB/mBaJKrkUiA=
X-Google-Smtp-Source: AA6agR54buz+Xv6FxZ6DPka0inUBOmi7EAEPlDRqA6LrvOqWp2iXRK5o5CcTMfTYBQLpYsLuHKBW2g==
X-Received: by 2002:a05:6870:f222:b0:10b:7326:18c2 with SMTP id t34-20020a056870f22200b0010b732618c2mr4856856oao.55.1659636086976;
        Thu, 04 Aug 2022 11:01:26 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:8785:b0:10c:45cc:c65a with SMTP id
 r5-20020a056870878500b0010c45ccc65als905710oam.6.-pod-prod-gmail; Thu, 04 Aug
 2022 11:01:25 -0700 (PDT)
X-Received: by 2002:a05:6870:b28a:b0:10f:72f:6c with SMTP id c10-20020a056870b28a00b0010f072f006cmr1426074oao.148.1659636085713;
        Thu, 04 Aug 2022 11:01:25 -0700 (PDT)
Received: by 2002:aca:b803:0:b0:337:ca0a:a326 with SMTP id 5614622812f47-33b27c391b3msb6e;
        Tue, 2 Aug 2022 02:39:30 -0700 (PDT)
X-Received: by 2002:a05:6808:23c6:b0:33a:af95:7ddc with SMTP id bq6-20020a05680823c600b0033aaf957ddcmr8240850oib.38.1659433169933;
        Tue, 02 Aug 2022 02:39:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1659433169; cv=none;
        d=google.com; s=arc-20160816;
        b=wUlW02eLuG7Nrp/p6N5hKrzCauWzvPCvUCm6JCzIhwxhJIWlBqFetpI5jQBDu8AL5C
         e9eaVxhAlOR7F6hoDA+5tOXtEMS6ia79wnQJfvIikdO3xn/UyavVL2LXcLax6n2R4JAL
         N98T0f0oHkS5YOTrgUrhiEpgudA9CTxWO0OADj/UAYigeBTgYGaSEYBC9uwLQQ/JmA6Q
         nE+p97U/R5DZdfvW/Cdyb0GQeeLHO5i8JB93R9NsWNX1DSNfKw+hanyZ9vMrmF8Xd20q
         IgQBNV0dzhczOOUz11XkfEUbt3tKBQtMfgH5fc+wzbof6yffW4UcQftim9Ia7bDBHEBh
         REog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=LyvNpkBQCZ9beUsXEWGnQQYs+gxnttNKWMrIufmPTZ4=;
        b=P5MrbeMaCfB0+W/2AJZYeHoWOmlKuLuwRbRkCT5cr50ya3fWXcFm/Yl/ypt4jrN6EM
         RUxQxwfjw6HZxG6UccwtdH7KJ09CXIybwCZCifvQND+gBjT5F5SS0qSplQP2y/0HZO2J
         6zYFmFwl9XDEIBXqZeEJqggDKN1OzrxYGUmKnKf3nhOvD6KP2kJRRku1CqOMEI64F6cj
         WnxwYafKqyWCcTpW2MNLGT++4XM7Gb9SR9QOIdoi2zkw53OiwqV/D+tHIWyMd1c26GLc
         sc80ZUtPO276POe2SB2ZM/qp9Qu7QP3l8dMqHzKx8e4zCfwc65qwZgqqRj6UYsNad8hb
         vyug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lijinlin3@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=lijinlin3@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id 71-20020a9d02cd000000b0061cae803d3asi222706otl.0.2022.08.02.02.39.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Aug 2022 02:39:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of lijinlin3@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from canpemm500008.china.huawei.com (unknown [172.30.72.54])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Lxqf33rRGzmVWX;
	Tue,  2 Aug 2022 17:37:31 +0800 (CST)
Received: from localhost.huawei.com (10.175.124.27) by
 canpemm500008.china.huawei.com (7.192.105.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Tue, 2 Aug 2022 17:39:26 +0800
From: "'Li Jinlin' via open-iscsi" <open-iscsi@googlegroups.com>
To: <lduncan@suse.com>, <cleech@redhat.com>, <michael.christie@oracle.com>,
	<jejb@linux.ibm.com>, <martin.petersen@oracle.com>, <mark.mielke@gmail.com>
CC: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linfeilong@huawei.com>,
	<liuzhiqiang26@huawei.com>
Subject: [PATCH] scsi: iscsi: iscsi_tcp: Fix null-ptr-deref while calling getpeername()
Date: Tue, 2 Aug 2022 18:19:39 +0800
Message-ID: <20220802101939.3972556-1-lijinlin3@huawei.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.124.27]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 canpemm500008.china.huawei.com (7.192.105.151)
X-CFilter-Loop: Reflected
X-Original-Sender: lijinlin3@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lijinlin3@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=lijinlin3@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Li Jinlin <lijinlin3@huawei.com>
Reply-To: open-iscsi@googlegroups.com
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

I got a kernel NULL pointer derference report as below:

    BUG: kernel NULL pointer dereference, address: 0000000000000038
    CPU: 4 PID: 1050 Comm: cat Not tainted 5.19.0 #38
    RIP: 0010:kernel_getpeername+0xf/0x30
    Call Trace:
     <TASK>
     ? iscsi_sw_tcp_conn_get_param+0x11f/0x17f
     show_conn_ep_param_ISCSI_PARAM_CONN_ADDRESS+0x90/0xb0
     dev_attr_show+0x1d/0x50
     sysfs_kf_seq_show+0xad/0x120
     kernfs_seq_show+0x2c/0x40
     seq_read_iter+0x12e/0x4d0
     ? aa_file_perm+0x177/0x590
     kernfs_fop_read_iter+0x183/0x210
     new_sync_read+0xfe/0x180
     ? 0xffffffff81000000
     vfs_read+0x14d/0x1a0
     ksys_read+0x6d/0xf0
     __x64_sys_read+0x1a/0x20
     do_syscall_64+0x3b/0x90
     entry_SYSCALL_64_after_hwframe+0x63/0xcd

The problem scenario is:

              CPU1                         CPU2
    -------------------------    ------------------------
    iscsi_sw_tcp_conn_get_param
      spin_lock_bh(&frwd_lock)
      if (!tcp_sw_conn || !tcp_sw_conn->sock)
         spin_unlock_bh(&frwd_lock)
         return -ENOTCONN

      sock = tcp_sw_conn->sock;
      sock_hold(sock->sk)
      spin_unlock_bh(&frwd_lock)
                                  iscsi_sw_tcp_release_conn
                                    spin_lock_bh(&frwd_lock)
                                    tcp_sw_conn->sock = NULL
                                    spin_unlock_bh(&frwd_lock)
                                    sockfd_put(sock)
                                      task_work
                                        __fput
                                          sock_close
                                            __sock_release
                                              sock->sk = NULL
                                              sock->ops = NULL
                                              sock->file = NULL
      kernel_getpeername
        sock->ops->getname
        ^^^^^^^^^
        NULL pointer dereference of sock->ops

sock_hold() and sock_put() can't ensure that sock_close() won't be
called before calling getpeername() or getsockname(). Using fget()
and sockfd_put() replace sock_hold() and sock_put(), and put them
under frwd_lock protection, to ensure that the socket struct is
preserved until after the getpeernaem() or getsockname() complete.

Fixes: bcf3a2953d36 ("scsi: iscsi: iscsi_tcp: Avoid holding spinlock while calling getpeername()")
Signed-off-by: Li Jinlin <lijinlin3@huawei.com>
---
 drivers/scsi/iscsi_tcp.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 9fee70d6434a..63532dc3970d 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -612,8 +612,8 @@ static void iscsi_sw_tcp_release_conn(struct iscsi_conn *conn)
 
 	spin_lock_bh(&session->frwd_lock);
 	tcp_sw_conn->sock = NULL;
-	spin_unlock_bh(&session->frwd_lock);
 	sockfd_put(sock);
+	spin_unlock_bh(&session->frwd_lock);
 }
 
 static void iscsi_sw_tcp_conn_destroy(struct iscsi_cls_conn *cls_conn)
@@ -756,7 +756,7 @@ static int iscsi_sw_tcp_conn_get_param(struct iscsi_cls_conn *cls_conn,
 			return -ENOTCONN;
 		}
 		sock = tcp_sw_conn->sock;
-		sock_hold(sock->sk);
+		fget(sock->file);
 		spin_unlock_bh(&conn->session->frwd_lock);
 
 		if (param == ISCSI_PARAM_LOCAL_PORT)
@@ -765,7 +765,9 @@ static int iscsi_sw_tcp_conn_get_param(struct iscsi_cls_conn *cls_conn,
 		else
 			rc = kernel_getpeername(sock,
 						(struct sockaddr *)&addr);
-		sock_put(sock->sk);
+		spin_lock_bh(&conn->session->frwd_lock);
+		sockfd_put(sock);
+		spin_unlock_bh(&conn->session->frwd_lock);
 		if (rc < 0)
 			return rc;
 
@@ -808,12 +810,14 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 			spin_unlock_bh(&session->frwd_lock);
 			return -ENOTCONN;
 		}
-		sock_hold(sock->sk);
+		fget(sock->file);
 		spin_unlock_bh(&session->frwd_lock);
 
 		rc = kernel_getsockname(sock,
 					(struct sockaddr *)&addr);
-		sock_put(sock->sk);
+		spin_lock_bh(&conn->session->frwd_lock);
+		sockfd_put(sock);
+		spin_unlock_bh(&conn->session->frwd_lock);
 		if (rc < 0)
 			return rc;
 
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220802101939.3972556-1-lijinlin3%40huawei.com.
